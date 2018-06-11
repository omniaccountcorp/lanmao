# coding: utf-8
module Lanmao
  module Form
    module Trade
      module UserPreTransactionForm
        #
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def user_pre_transaction_form(request_no, user_no, biz_type,
                                 amount, expired, redirect_url,
                                 project_no, share, creditsale_request_no,
                                 pre_marketing_amount)
          service = 'USER_PRE_TRANSACTION'

          params = {
            platformUserNo: user_no,
            requestNo: request_no,
            bizType: biz_type,
            amount: amount,
            expired: expired,
            redirectUrl: redirect_url,
            projectNo: project_no,
            share: share,
            creditsaleRequestNo: creditsale_request_no,
            preMarketingAmount: pre_marketing_amount,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
