# coding: utf-8
module Lanmao
  module Api
    module Query
      module QueryProjectInformation
        #
        # 表的信息查询
        #
        # @param keywords [Array]
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :banks [Array] 查询结果银行列表
        #         * :union_bank_code [String] 人行分配联行号
        #         * :bank_name [String] 银行分支行全称
        #
        def query_project_information()


          params = {}

          res = operate_post()

          res
        end

      end
    end
  end
end
