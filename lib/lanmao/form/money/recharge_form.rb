# coding: utf-8
module Lanmao
  module Form
    module Money
      module Recharge
        # 绑定卡到电子账户充值
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :requestNo [String] 请求流水号
        #       * :code [String] 调用状态(0 为调用成功、1 为失败，返回 1 时请看【调用失败错误码】及错误码 描述)
        #       * :status [String] 业务处理状态(处理失败 INIT;处理成功 SUCCESS)，平台可根据非 SUCCESS 状态做相应处理，处理失败时可参考错误码及描述
        #       * :errorCode [String] 错误码、若支付失败时，显示存管错误码信息
        #       * :errorMessage [String] 错误码描述，若支付失败时，显示存管错误码描述
        #       * :rechargeStatus [String] 充值状态;SUCCESS 支付成功、FAIL 支付失败、PENDDING 支付中(充值结果以此状态为准)
        #       * :platformUserNo [String] 平台用户编号
        #       * :amount [String] 充值金额
        #       * :commission [String] 平台佣金
        #       * :payCompany [String] 支付公司
        #       * :rechareWay [String] 支付方式
        #       * :bankcode [String] 银行编码（只有快捷会返回）
        #       * :payMobile [String] 本次充值手机号，网银为空
        #       * :transactionTime [String] 交易完成时间
        #       * :channelErrorCode [String] 支付通道错误码(若快捷充值回调方式传入 DIRECT_CALLBACK，则返回 此参数)技术支持单独提供
        #       * :channelErrorMessage [String] 支付通道返回错误消息(若快捷充值回调方式传入 DIRECT_CALLBACK， 则返回此参数)技术支持单独提供
        #
        def recharge(platform_user_no, request_no, amount,
                     expect_pay_company, redirect_url, expired,
                     commission, bankcode, pay_type,
                     authtrade_type, authtender_amount,
                     project_no, callback_mode,  recharge_way="SWIFT")

          service = "RECHARGE"

          params = {
            platformUserNo: platform_user_no,
            requestNo: request_no,
            amount: amount,
            expectPayCompany: expect_pay_company,
            rechargeWay: recharge_way,
            redirectUrl: redirect_url,
            expired: expired,
            commission: commission,
            bankcode: bankcode,
            payType: pay_type,
            authtradeType: authtrade_type,
            authtenderAmount: authtender_amount,
            projectNo: project_no,
            callbackMode: callback_mode,
          }

          res = get_form_data(service, params)

          res
        end
      end
    end
  end
end
