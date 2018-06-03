# coding: utf-8
module Lanmao
  module Api
    module Query
      module QueryTransaction

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
        def query_transaction(flow_id, transaction_type, user_no)
          service = 'QUERY_TRANSACTION'

          params = {
            requestNo: flow_id,
            transactionType: transaction_type,
            platformUserNo: user_no,
          }

          res = operate_post(:query, service, params, :service)

          res
        end

      end
    end
  end
end
