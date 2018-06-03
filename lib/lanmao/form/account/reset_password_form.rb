# coding: utf-8
module Lanmao
  module Form
    module Account
      module ResetPasswordForm

        #  2.7 修改密码
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def reset_password_form(flow_id, user_no, is_skip, return_url, client='MOBILE')
          service = 'RESET_PASSWORD'

          params = {
            platformUserNo: user_no,
            requestNo: flow_id,
            isSkip: is_skip,
            redirectUrl: return_url,
            userDevice: client,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end