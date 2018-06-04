# coding: utf-8
module Lanmao
  module Api
    module Trade
      module DebentureSale
        # 单笔债权出让
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        def debenture_sale(request_no, user_no, project_no, sale_share)

          service = 'DEBENTURE_SALE'

          params = {
            requestNo: request_no,
            platformUserNo: user_no,
            projectNo: project_no,
            saleShare: sale_share,
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end
    end
  end
end
