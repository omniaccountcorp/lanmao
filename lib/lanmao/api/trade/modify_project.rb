# coding: utf-8
module Lanmao
  module Api
    module Trade
      module ModifyProject

        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def modify_project(request_no, project_no, status)

          service = 'MODIFY_PROJECT'

          params = {
            requestNo: request_no,
            projectNo: project_no,
            status: status,
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end
    end
  end
end
