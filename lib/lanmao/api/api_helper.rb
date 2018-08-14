# coding: utf-8
module Lanmao
  module Api
    module CommunicateResultHelper

      # 操作类的 api，统一返回处理
      #
      # @param request_type [Symbole] 操作类（:operate）/查询类(:query)
      # @param service [ String ] 上饶的服务
      # @param params [ Hash ] 参数
      # @param type [ Symbol ] gateway => 网关模式, service => 直连模式
      #
      #
      def operate_post(request_type, service, params, type)
        request = Http::Request.new(params, @config, service, type)
        response = request.post

        res = Lanmao::Utils.api_result(params, response)

        # 向服务器发送操作，超时类的都应该当 pending 处理
        if :operate == request_type
          if response.http_pending?
            Lanmao.logger.info "#{request.identifier} 最终返回的数据为：\n#{res}\n"
            return res
          end

          # 确定的错误
          # 调用状态（0为调用成功、1为失败，返回1时请看【error_code】及【error_msg】描述）
          if '1' == response.data[:code].to_s
            res[:result] = 'F'
            Lanmao.logger.info "#{request.identifier} 最终返回的数据为：\n#{res}\n"
            return res
          end

        # 查询类 api，http 没成功都返回 pending
        elsif :query == request_type
          unless response.http_success?
            Lanmao.logger.info "#{request.identifier} 最终返回的数据为：\n#{res}\n"
            return res
          end

        else
          raise '未知的请求类型，请选择设置：操作类（:operate）/查询类(:query)'
        end

        res[:result] = 'S' if 'SUCCESS' == response.data[:status] && '0' == response.data[:code].to_s # 业务是否成功标记位

        Lanmao.logger.info "#{request.identifier} 最终返回的数据为：\n#{res}\n"
        res
      end

      def download_post(service, params, type)
        request = Http::Request.new(params, @config, service, type)
        response = request.post
        res = {
          result: 'P', # 默认
          request_params: params,
          response: response,
          flow_id: nil,
          code: nil,
          error_code: nil,
          error_msg: nil,
          data: nil,
        }
        result = JSON.parse(response).with_indifferent_access rescue {}
        if "INIT" == result[:status]
          res[:result] = "F"
          res[:code] = result[:code]
          res[:error_code] = result[:errorCode]
          res[:error_msg] = result[:errorMessage]
        else
          res[:result] = "S"
          res[:data] = response
        end

        res
      end

    end # CommunicateResultHelper
  end
end
