# coding: utf-8
require 'spec_helper'

RSpec.describe "取消预处理" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:pre_transaction_no) { "5b1a70433c32868b50000001" }
  let(:amount) { 0.1 }

  it "成功取消" do
    res = client.cancel_pre_transaction(request_no, pre_transaction_no, amount)

    # ap res
    expect(res[:data][:status]).to eq "SUCCESS"
    expect(res[:result]).to eq('S')
  end
end
