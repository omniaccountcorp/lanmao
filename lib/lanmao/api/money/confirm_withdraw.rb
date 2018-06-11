# coding: utf-8
module Lanmao
  module Api
    module Money
      module ConfirmWithdraw
        # 提现确认
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :requestNo [String] 交易流水号
        #       * :code [String] 调用状态（0为调用成功、1为失败，返回1时请看【调用失败错误码】及错误码描述）
        #       * :status [Enum] 业务处理状态（处理失败INIT；处理成功SUCCESS）
        #       * :errorCode [String]
        #       * :errorMessage [String]
        #       * :withdrawStatus [String] 提现交易状态
        #       * :withdrawWay [String] 提现方式
        #       * :remitType [String] 款类型；NORMAL：T1出款；NORMAL_URGENT：普通T0出款；URGENT：实时T0出款；
        #       * :floatAmount [amount] 垫资金额
        #       * :createTime [Time] 交易发起时间
        #       * :transactionTime [Time] 交易完成时间
        #
        def confirm_withdraw(flow_id, pre_transaction_no, withdraw_type)

          service = "CONFIRM_WITHDRAW"

          params = {
            requestNo: flow_id,
            preTransactionNo: pre_transaction_no,
            withdrawType: withdraw_type
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
