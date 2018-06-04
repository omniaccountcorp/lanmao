# coding: utf-8
module Lanmao
  module Form
    module Account
      module PersonalBindBankcardExpandForm
        # 个人换绑卡
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
        def personal_bind_bankcard_expand_form(flow_id, redirect_url, platform_user_no, check_type="LIMIT", bind_type="UPDATE_BANKCARD", client='MOBILE')

          service = "PERSONAL_BIND_BANKCARD_EXPAND"
          params = {
            requestNo: flow_id,
            redirectUrl: redirect_url,
            platformUserNo: platform_user_no,
            checkType: check_type,
            bindType: bind_type,
            userDevice: client
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
