# coding: utf-8
module Lanmao
  module Form
    module Account
      module PersonalRegisterExpandForm
        #
        #  2.1 个人绑卡注册
        #
        # @return [ Hash ] 结果集
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def personal_register_expand_form(user_no, flow_id, true_name, id_card_no, bank_card_no, phone, id_card_type, role_type, check_type, return_url, user_limit_type='ID_CARD_NO_UNIQUE', auth_list='')
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
            userLimitType: user_limit_type,
            authList: auth_list,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
