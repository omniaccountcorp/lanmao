# coding: utf-8
module Lanmao
  module Form
    module Account
      module ActivateStockedUserForm
        #
        #  2.11 会员激活
        #
        # @return [ Hash ] 结果集
        #   * :form_method
        #     * :method
        #     * :url
        #   * :form_data
        #     * :data
        #
        def activate_stocked_user_form(flow_id, return_url, user_no, auth_list='', check_type='LIMIT')
          service = 'ACTIVATE_STOCKED_USER'

          params = {
            platformUserNo: user_no,
            requestNo: flow_id,
            authList: auth_list,
            redirectUrl: return_url,
            checkType: check_type,
          }

          res = get_form_data(service, params)

          res
        end

      end
    end
  end
end
