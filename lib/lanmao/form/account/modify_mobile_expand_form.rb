# coding: utf-8
module Lanmao
  module Form
    module Account
      module ModifyMobileExpandForm
        # 修改手机号码
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def modify_mobile_expand_form(flow_id, platform_user_no, redirect_url, check_type)

          service = "MODIFY_MOBILE_EXPAND"

          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_no,
            redirectUrl: redirect_url,
            checkType: check_type,
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
