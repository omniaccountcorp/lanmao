# coding: utf-8
require 'spec_helper'

RSpec.describe "对账文件确认" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:file_date) { "20181022" }
  let(:detail) { "anything" }
  let(:file_type) { "RECHARGE" }

  it "失败" do
    res = client.confirm_checkfile(request_no, file_date, detail, file_type)

    # ap res
    expect(res[:data][:errorMessage]).to include"格式不正确"
    expect(res[:result]).not_to eq('S')
  end
end
