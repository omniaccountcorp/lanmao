# coding: utf-8
require 'spec_helper'

RSpec.describe "提现确认" do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:pre_transaction_no) { "123" }
  let(:withdraw_way) { "NORMAL" }

  it "创建失败" do
    res = client.confirm_withdraw(flow_id, pre_transaction_no, withdraw_way)

    # ap res
    expect(res[:data]["errorMessage"]).to include("提现记录不存在")
    expect(res[:result]).not_to eq('S')
  end
end
