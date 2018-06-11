# coding: utf-8
require 'spec_helper'

RSpec.describe "批量交易" do
  let(:batch_no) { Lanmao::Utils.gen_flow_id }

  it "失败" do
    biz_details = [
      {
        requestNo: Lanmao::Utils.gen_flow_id,
        tradeType: "TENDER", #放款
        projectNo: "5b1b86f63c328667d0000002",
        saleRequestNo: "",
        details: [
          bizType: "TENDER", #投标
          freezeRequestNo: "5b1b89503c32869ada000001",
          sourcePlatformUserNo: "I01",
          targetPlatformUserNo: "c01",
          amount: 0.10
        ]
      }
    ]
    res = client.async_transaction(batch_no, biz_details)

    # ap res
    expect(res[:data][:status]).to eq "SUCCESS"
    expect(res[:result]).to eq('S')
  end
end
