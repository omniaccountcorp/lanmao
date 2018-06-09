# coding: utf-8
require 'spec_helper'

RSpec.describe "对账文件下载" do
  let(:file_date) { "20180605" }

  it "文件下载成功" do
    res = client.download_checkfile(file_date)

    if "S" == res[:result]
      path = 'tmp/download_checkfile.zip'
      fp = File.open(path, 'w+')
      fp.write res[:data]
      fp.close
      ap "SUCCESS"
    else
      ap res[:data][:errorMessage]
    end

  end
end
