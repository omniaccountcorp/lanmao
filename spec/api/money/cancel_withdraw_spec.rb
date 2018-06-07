# coding: utf-8
require 'spec_helper'

RSpec.describe "提现取消" do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:pre_transaction_no) { "123" }

  it "失败" do
    res = client.cancel_withdraw(flow_id, pre_transaction_no)

    # ap res
    expect(res[:data][:errorMessage]).to include("冻结订单不存在")
    expect(res[:result]).not_to eq('S')
  end
end
