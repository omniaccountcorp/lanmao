# coding: utf-8
require 'spec_helper'

RSpec.describe "批量交易" do
  let(:batch_no) { Lanmao::Utils.gen_flow_id }

  it "失败" do
    biz_details = [
      {
        requestNo: Lanmao::Utils.gen_flow_id,
        tradeType: "TENDER",
        projectNo: "test",
        saleRequestNo: "test",
        details: [
          bizType: "TENDER",
          freezeRequestNo: "test",
          sourcePlatformUserNo: "123",
          targetPlatformUserNo: "123",
          amount: 1000.00,
          income: 1.00,
          share: 1000.00,
          customDefine: "",
          remark: "",
        ]
      }
    ]
    res = client.async_transaction(batch_no, biz_details)

    expect(res[:result]).not_to eq('S')
  end
end
