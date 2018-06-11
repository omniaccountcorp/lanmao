# coding: utf-8
module Lanmao
  module Form
    module Account
      module EnterpriseBindBankcardForm
        # 企业换绑卡
        #
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def enterprise_bind_bankcard_form(flow_id, redirect_url, platform_user_no, bank_card_no, bank_code, bind_type="UPDATE_BANKCARD")

          service = "ENTERPRISE_BIND_BANKCARD"

          params = {
            requestNo: flow_id,
            redirectUrl: redirect_url,
            platformUserNo: platform_user_no,
            bankcardNo: bank_card_no,
            bankcode: bank_code,
            bindType: bind_type,
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
