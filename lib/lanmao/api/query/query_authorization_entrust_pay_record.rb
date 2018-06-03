# coding: utf-8
module Lanmao
  module Api
    module Query
      module QueryAuthorizationEntrustPayRecord

        #  5.2	单笔交易查询
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def query_authorization_entrust_pay_record(flow_id)
          service = 'QUERY_AUTHORIZATION_ENTRUST_PAY_RECORD'

          params = {
            requestNo: flow_id,            
          }

          res = operate_post(:query, service, params, :service)

          res
        end

      end
    end
  end
end
