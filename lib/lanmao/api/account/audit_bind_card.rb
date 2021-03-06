# coding: utf-8
module Lanmao
  module Api
    module Account
      module AuditBindCard
        # 换卡申请
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :url [String] 支付 url
        #       * :order_no [String] 订单号
        #       * :amount [Number] 金额
        #
        def audit_bind_card(request_no, original_request_no, audit_type)

          service = "AUDIT_BIND_CARD"
          
          params = {
            requestNo: request_no,
            originalRequestNo: original_request_no,
            auditType: audit_type
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
