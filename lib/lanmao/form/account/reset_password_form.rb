# coding: utf-8
module Lanmao
  module Form
    module Account
      module ResetPasswordForm
        # 修改密码
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def reset_password_form(flow_id, platform_user_no, redirect_url, is_skip="Forget", client='MOBILE')

          service = "RESET_PASSWORD"

          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_no,
            redirectUrl: redirect_url,
            isSkip: is_skip,
            userDevice: client
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
