# coding: utf-8
module Lanmao
  module Form
    module Account
      module CheckPasswordForm

        #  2.8 验证密码
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def check_password_form(flow_id, user_no, biz_type_description, return_url, client='MOBILE')
          service = 'CHECK_PASSWORD'

          params = {
            platformUserNo: user_no,
            requestNo: flow_id,
            bizTypeDescription: biz_type_description,
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