# coding: utf-8
module Lanmao
  module Form
    module Account
      module EnterpriseRegisterForm
        #
        #  2.2 企业绑卡注册
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def enterprise_register_form(flow_id, user_no, enterprise_name, bank_licence, org_no, tax_no, business_license, unified_code,
                                     credit_code, legal, id_card_type, legal_id_card_no, contact, contact_phone, role_type,
                                     bank_card_no, bank_code, return_url, auth_list='')
          service = 'ENTERPRISE_REGISTER'

          params = {
            platformUserNo: user_no,
            requestNo: flow_id,
            enterpriseName: enterprise_name,
            bankLicense: bank_licence,
            orgNo: org_no,
            businessLicense: business_license,
            taxNo: tax_no,
            unifiedCode: unified_code,
            creditCode: credit_code,
            legal: legal,
            idCardType: id_card_type,
            legalIdCardNo: legal_id_card_no,
            contact: contact,
            contactPhone: contact_phone,
            userRole: role_type,
            bankcardNo: bank_card_no,
            bankcode: bank_code,
            redirectUrl: return_url,
            authList: auth_list,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
