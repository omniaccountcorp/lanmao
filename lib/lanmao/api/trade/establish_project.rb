# coding: utf-8
module Lanmao
  module Api
    module Trade
      module EstablishProject

        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #
        def establish_project(request_no, user_no, project_no,
                              project_amount, project_name,
                              project_type, annnual_interest_rate,
                              repayment_way, project_period, project_description=nil, extend_info=nil)

          service = 'ESTABLISH_PROJECT'

          params = {
            platformUserNo: user_no,
            requestNo: request_no,
            projectNo: project_no,
            projectAmount: project_amount,
            projectName: project_name,
            projectDescription: project_description,
            projectType: project_type,
            projectPeriod: project_period,
            annnualInterestRate: annnual_interest_rate,
            repaymentWay: repayment_way,
            extend: extend_info,
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end
    end
  end
end
