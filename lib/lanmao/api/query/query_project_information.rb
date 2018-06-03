# coding: utf-8
module Lanmao
  module Api
    module Query
      module QueryProjectInformation

        #  5.2	标的信息查询
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def query_project_information(project_no)
          service = 'QUERY_PROJECT_INFORMATION'

          params = {
            projectNo: project_no,
          }

          res = operate_post(:query, service, params, :service)

          res
        end

      end
    end
  end
end
