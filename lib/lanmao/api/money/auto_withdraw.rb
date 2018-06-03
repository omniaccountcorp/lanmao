# coding: utf-8
module Lanmao
  module Api
    module Money
      module Withdraw

        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def auto_withdraw(user_no, flow_id, withdraw_type,
                     amount, commission=nil)

          service = 'AUTO_WITHDRAW'

          params = {
            platformUserNo: user_no,
            requestNo: flow_id,
            withdrawType: withdraw_type,
            amount: amount,
            commission: commission
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end
    end
  end
end
