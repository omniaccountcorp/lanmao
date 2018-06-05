# coding: utf-8
require 'spec_helper'

RSpec.describe "取消预处理" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:pre_transaction_no) { "123" }
  let(:amount) { 200 }

  it "通信成功" do
    res = client.cancel_pre_transaction(request_no, pre_transaction_no, amount)

    # ap res
    expect(res[:result]).not_to eq('S')
  end
end
