# coding: utf-8
module Lanmao
  module Api
    module Account
      module ModifyMobileExpand
        # 修改手机号码
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def modify_mobile_expand(flow_id, platform_user_no, redirect_url, check_type, client="MOBILE")

          service = "MODIFY_MOBILE_EXPAND"

          params = {
            requetNo: flow_id,
            platformUserNo: platform_user_no,
            redirectUrl: redirect_url,
            checkType: check_type,
            userDevice: client
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
