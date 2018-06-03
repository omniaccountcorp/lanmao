# coding: utf-8
module Lanmao
  module Form
    module Account
      module PersonalRegisterExpand

        #  2.1 个人绑卡注册
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def personal_register_expand_form(user_no, flow_id, true_name, id_card_no, bank_card_no, phone, id_card_type, role_type, check_type, return_url, user_limit_type='ID_CARD_NO_UNIQUE', auth_list='', client='MOBILE')
          service = 'PERSONAL_REGISTER_EXPAND'

          params = {
            platformUserNo: user_no,
            requestNo: flow_id,
            realName: true_name,
            idCardNo: id_card_no,
            bankcardNo: bank_card_no,
            mobile: phone,
            idCardType: id_card_type,
            userRole: role_type,
            checkType: check_type,
            redirectUrl: return_url,
            user_limit_type: user_limit_type,
            auth_list: auth_list,
            userDevice: client,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
