# coding: utf-8
module Lanmao
  module Api
    module Query
      module QueryAuthorizationEntrustPayRecord
        #
        #  委托支付授权记录查询
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :name [String] 姓名
        #       * :status [String] 订单状态
        #
        def query_authorization_entrust_pay_record()

          params = {}

          res = operate_post()

          res
        end

      end
    end
  end
end
