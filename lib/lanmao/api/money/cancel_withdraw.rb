# coding: utf-8
module Lanmao
  module Api
    module Money
      module CancelWithdraw
        # 取消提现
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :request_no [String] 交易流水号
        #       * :code [Enum] 调用状态（0为调用成功、1为失败，返回1时请看【调用失败错误码】及错误码描述）

        #       * :status [Enum]
        #       * :errorCode [String] 错误吗
        #       * :errorMessage [String] 错误描述
        #
        def cancel_withdraw(flow_id, pre_transaction_no)

          service = "CANCEL_WITHDRAW"

          params = {
            requestNo: flow_id,
            preTransactionNo: pre_transaction_no
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
