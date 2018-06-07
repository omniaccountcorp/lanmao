# coding: utf-8
module Lanmao
  module Form
    module Trade 
      module UserAuthorizationForm
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def user_authorization_form(user_no, request_no, auth_list, redirect_url, fail_time='', amount='')
          service = 'USER_AUTHORIZATION'

          params = {
            platformUserNo: user_no,
            requestNo: request_no,
            authList: auth_list,
            redirectUrl: redirect_url,
            failTime: fail_time,
            amount: amount,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
