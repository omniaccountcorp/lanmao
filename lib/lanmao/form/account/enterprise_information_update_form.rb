# coding: utf-8
module Lanmao
  module Api
    module Account
      module EnterpriseInformationUpdate
        # 更新企业信息
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def enterprise_information_update(flow_id, platform_user_no, redirect_url)

          service = "ENTERPRISE_INFORMATION_UPDATE"

          params = {
            requetNo: flow_id,
            platformUserNo: platform_user_no,
            redirectUrl: redirect_url
          }

          res = get_form_data(service, params)
          
          res
        end

      end # module
    end
  end
end
