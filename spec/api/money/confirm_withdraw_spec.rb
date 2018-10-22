# coding: utf-8
require 'spec_helper'

RSpec.describe "提现确认" do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:pre_transaction_no) { "5b1a46083c328613b6000001" }
  let(:withdraw_type) { "NORMAL" }

  it "重复确认失败" do
    res = client.confirm_withdraw(flow_id, pre_transaction_no, withdraw_type)

    # ap res
    expect(res[:data][:errorMessage]).to include("提现记录不存在")
    expect(res[:result]).to eq('P')
  end
end
