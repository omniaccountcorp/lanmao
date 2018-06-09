# coding: utf-8
module Lanmao
  module Form
    module DataHelper

      # 跳转到新网 Form 类的 api，统一返回处理
      #
      # @param service [ String ] 新网的服务
      # @param params [ Hash ] 参数
      #
      # @return [ Hash ] 结果集
      #   * form_method
      #     * url
      #     * method
      #   * form_data
      #     * :data
      #
      def get_form_data(service, params)
        request = Http::Request.new(params, @config, service, :gateway)
        body, url = request.get_body

        {
          form_method: {
            :url => url,
            :method => :post,
          },
          form_data: body,
        }
      end

    end # DataHelper
  end
end
