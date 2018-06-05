# coding: utf-8
module Lanmao
  module Api
    module Trade
      module AsyncTransaction
        # 批量交易
        #
        # @param biz_details [ Array ] 交易明细
        #          * :request_no 交易明细订单号
        #          * :trade_type 交易类型
        #          * :project_no 标的编号
        #          * :sale_request_no 债权出让请求流水号
        #          * :details [Array] 业务明细
        #            * :biz_type 业务类型
        #            * :freeze_request_no 预处理请求流水号
        #            * :source_platform_user_no 出款方用户编号
        #            * :target_platform_user_no 收款方用户编号
        #            * :amount 交易金额
        #            * :income 利息
        #            * :share 债权份额 (债权认购且需校验债权关系的必传)
        #            * :custom_define 平台商户自定义参数，平台交易时传入的自定义参数
        #            * :remark 备注
        #
        def async_transaction(batch_no, biz_details)

          service = 'ASYNC_TRANSACTION'

          params = {
            batchNo: batch_no,
            bizDetails: biz_details,
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end
    end
  end
end
