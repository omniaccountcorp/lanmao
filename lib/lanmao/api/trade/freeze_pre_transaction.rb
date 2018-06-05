# coding: utf-8
module Lanmao
  module Api
    module Trade
      module FreezePreTransaction
        # 冻结预处理
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
        def freeze_pre_transaction(flow_id, platform_user_no, biz_type, amount)

          service = "FREEZE_PRE_TRANSACTION"

          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_no,
            bizType: biz_type,
            amount: amount
          }
          
          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
