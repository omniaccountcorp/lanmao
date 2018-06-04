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
        #       * :serial_no [String] 交易流水号
        #       * :order_no [String] 订单号
        #       * :amount [Number] 金额
        #       * :balance [Number] 操作后账户余额
        #
        def confirm_withdraw()
          params = { }

          res = operate_post()

          Lanmao.logger.info res

          res
        end

      end # module
    end
  end
end
