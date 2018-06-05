# coding: utf-8
module Lanmao
  module Api
    module Trade
      module DownloadCheckfile
        # 对账文件下载
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :File [file] 对账文件
        #
        def download_checkfile(file_date)

          service = "DOWNLOAD_CHECKFILE"

          params = {
            fileDate: file_date
          }

          res = operate_post(:operate, service, params, :service)

          res
        end

      end # module
    end
  end
end
