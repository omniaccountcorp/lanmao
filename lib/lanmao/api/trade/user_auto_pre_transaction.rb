# coding: utf-8
module Lanmao
  module Api
    module Trade
      module UserAutoPreTransaction
        # 授权预处理
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :bizType
        #       * :status
        #       * :errorCode
        #       * :errorMessage
        #       * :requestNo
        #
        def user_auto_pre_transaction(flow_id, platform_user_id,  biz_type, amount,  project_no, original_recharge_no=nil, pre_marketing_amount=nil, share=nil, credit_sale_request_no=nil, remark="")

          service = "USER_AUTO_PRE_TRANSACTION"
          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_id,
            originalRechargeNo: original_recharge_no,
            bizType: biz_type,
            amount: amount,
            preMarketingAmount: pre_marketing_amount,
            remark: remark,
            projectNo: project_no,
            share: share,
            creditsaleRequestNo: credit_sale_request_no,
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
