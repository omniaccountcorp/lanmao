# coding: utf-8
module Lanmao
  module Api
    module Trade
      module AuthorizationEntrustPay
        # 委托支付授权
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :code [Enum] 调用状态（0为调用成功、1为失败，返回1时请看【调用失败错误码】及错误码描述）
        #       * :status [Enum] 业务处理状态（处理失败INIT；处理成功SUCCESS）
        #       * :errorCode [String]
        #       * :errorMessage [String]
        #       * :authorizeStatus [String] 委托支付授权审核状态
        #
        def authorization_entrust_pay(flow_id, borrow_platform_user_no, project_no, entrusted_type, entrusted_platform_user_no, check_type="LIMIT")

          service = "AUTHORIZATION_ENTRUST_PAY"

          params = {
            borrowPlatformUserNo: borrow_platform_user_no,
            requestNo: flow_id,
            projectNo: project_no,
            checkType: check_type,
            entrustedType: entrusted_type,
            entrustedPlatformUserNo: entrusted_platform_user_no
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
