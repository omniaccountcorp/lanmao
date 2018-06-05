# coding: utf-8
module Lanmao
  module Api
    module Money
      module DirectRecharge
        # 自动充值
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
        def direct_recharge(flow_id, platform_user_no, amount, pay_company, recharge_way, commission=0)

          service = "DIRECT_RECHARGE"

          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_no,
            amount: amount,
            expectPayCommission: commission,
            rechargeWay: recharge_way,
            commission: commission
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
