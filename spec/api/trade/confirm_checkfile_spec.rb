# coding: utf-8
require 'spec_helper'

RSpec.describe "对账文件确认" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:file_date) { "20180602" }
  let(:detail) { %w(RECHARGE WITHDRAW COMMISSION TRANSACTION BACKROLL_RECHARGE).map {|a| {"fileType": a}}}

  it "失败" do
    res = client.confirm_checkfile(request_no, file_date, detail)

    # ap res
    expect(res[:result]).not_to eq('S')
  end
end
