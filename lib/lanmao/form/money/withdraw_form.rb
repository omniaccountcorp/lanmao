# coding: utf-8
module Lanmao
  module Form
    module Money
      module WithdrawForm
        # 提现
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :serial_no [String] 交易流水号
        #       * :order_no [String] 订单号
        #       * :amount [Number] 金额
        #       * :balance [Number] 操作后账户余额
        #
        def withdraw_form(flow_id, platform_user_no, expired, redirect_url, amount, withdraw_type='NORMAL', withdraw_form='IMMEDIATE', commission=nil)

          service = "WITHDRAW"

          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_no,
            expired: expired,
            redirectUrl: redirect_url,
            amount: amount,
            withdrawType: withdraw_type,
            withdrawForm: withdraw_form,
            commission: commission
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
