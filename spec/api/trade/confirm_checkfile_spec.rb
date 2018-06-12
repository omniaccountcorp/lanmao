# coding: utf-8
require 'spec_helper'

##  TODO：this spec is failed
RSpec.describe "对账文件确认" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:file_date) { "20180608" }
  let(:detail) { %w(RECHARGE WITHDRAW COMMISSION TRANSACTION BACKROLL_RECHARGE).map {|a| {"fileType": a}}}

  it "确认成功" do
    res = client.confirm_checkfile(request_no, file_date, detail)

    # ap res
    expect(res[:data][:errorMessage]).to include "对账文件已确认"
    expect(res[:result]).to_not eq('S')
  end
end
