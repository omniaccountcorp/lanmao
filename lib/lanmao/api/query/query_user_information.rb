# coding: utf-8
module Lanmao
  module Api
    module Query
      module QueryUserInformation

        #  用户信息查询
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :card_no [String] 电子账号
        #       * :name [String] 姓名
        #       * :asset_no [String] 标的编号
        #       * :bid_amount [String] 投标金额
        #       * :forcast_income [String] 预期收益
        #       * :buy_date [String] 投标日期
        #       * :state [String] 记录状态 (1: 投标中, 2: 计息中, 4: 本息已返还, 5: 投标已撤销)
        #       * :auth_code [String] 投标申请授权码
        #       * :bonus_amount [String] 抵扣红包金额
        #
        def query_user_information()


          params = { }

          res = operate_post()

          res
        end

      end
    end
  end
end
