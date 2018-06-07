# coding: utf-8
module Lanmao
  module Http

    class Request
      require 'active_support/all'

      def initialize(params, config, service, type)
        @params = params
        @params[:timestamp] = Time.now.in_time_zone("Beijing").strftime('%Y%m%d%H%M%S') # 时间戳

        @config = config
        @service = service

        @url = if :gateway == type                # 网关模式
                 @config[:path] + "/gateway"
               elsif :service == type             # 直连模式
                 @config[:path] + "/service"
               else
                 @config[:path]
               end
        @response = nil
      end

      def get_body
        Lanmao.logger.info "#{identifier} 请求内容为：\n#{@params.to_json}\n"

        sign_str = Sign::RSA.sign(@params.to_json, @config[:private_key])

        body = {
          serviceName: @service,
          platformNo: @config[:platform_no],
          reqData: @params.to_json,
          keySerial: @config[:key_serial],
          sign: sign_str,
        }

        url = @url

        return body, url
      end

      def post
        # 1. api params
        Lanmao.logger.info "#{identifier} 请求内容为：\n#{@params.to_json}\n"

        # 2. sign
        sign_str = Sign::RSA.sign(@params.to_json, @config[:private_key])

        # 3. merge sign
        post_body = {
          serviceName: @service,
          platformNo: @config[:platform_no],
          reqData: @params.to_json,
          keySerial: @config[:key_serial],
          sign: sign_str,
        }

        # 5. send http request
        Lanmao.logger.info "#{identifier} 发送的报文为：\n#{post_body}\n"
        http_response = RestClient.post(@url, post_body)

        Lanmao.logger.info "#{identifier} 返回的报文为：\n#{http_response.body.force_encoding('utf-8')}\n"

        # 6. create response
        @response = Lanmao::Http::Response.new(service: @service,
                                               flow_id: flow_id,
                                               http_response: http_response,
                                               raw_body: http_response.body,
                                               data: Utils.symbolize_keys(JSON.parse(http_response.body)),
                                               # data_valid: true
                                               data_valid: Sign::RSA.verify(http_response.body, http_response.headers[:sign],  @config)
                                             )

      end

      def flow_id
        @params[:requestNo]
      end

      def identifier
        "[#{@service} - #{flow_id}] "
      end

    end # end of class
  end
end
