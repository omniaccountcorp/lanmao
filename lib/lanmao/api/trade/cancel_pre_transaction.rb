# coding: utf-8
module Lanmao
  module Api
    module Trade
      module CancelPreTransaction
        # 预处理取消
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :code [Enum] 返回吗
        #       * :status [Enum] 业务处理状态（处理失败INIT；处理成功SUCCESS）
        #       * :errorCode [String] 错误码
        #       * :errorMessage [String] 错误描述
        #
        def cancel_pre_transaction(flow_id, pre_transaction_no, amount, commission="", profit_details=[])

          service = "CANCEL_PRE_TRANSACTION"

          params = {
            requestNo: flow_id,
            preTransactionNo: pre_transaction_no,
            amount: amount,
            commission: commission,
            profitDetails: profit_details
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
