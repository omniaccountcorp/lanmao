# coding: utf-8
module Lanmao
  module Form
    module Account
      module UnbindBankcardForm
        # 解绑银行卡
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def unbind_bankcard_form(flow_id, redirect_url, platform_user_no, client="MOBILE")

          service = "UNBIND_BANKCARD"

          params = {
            requestNo: flow_id,
            redirectUrl: redirect_url,
            platformUserNo: platform_user_no,
            userDevice: client
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
