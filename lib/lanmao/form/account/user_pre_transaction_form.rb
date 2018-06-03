# coding: utf-8
module Lanmao
  module Form
    module Account
      module UserPreTransaction

        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def user_pre_transaction(request_no, user_no, biz_type,
                                 amount, expired, redirect_url,
                                 project_no, share, creditsale_request_no,
                                 pre_marketing_amount, remark="")
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
            remark: remark,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
