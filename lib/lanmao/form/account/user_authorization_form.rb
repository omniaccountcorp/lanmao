# coding: utf-8
module Lanmao
  module Api
    module Account
      module UserAuthorization

        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def user_authorization(user_no, request_no, auth_list, redirect_url)

          service = 'USER_AUTHORIZATION'

          params = {
            platformUserNo: user_no,
            requestNo: request_no,
            authList: auth_list,
            redirectUrl: redirect_url,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
