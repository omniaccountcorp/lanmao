# coding: utf-8
require 'spec_helper'

RSpec.describe "资金解冻" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }
  let(:original_freeze_request_no) { "5b1de0e73c328654d9000001" }
  let(:amount) { 0.2 }

  it "资金解冻成功" do
    res = client.unfreeze(request_no, amount, user_no, original_freeze_request_no)

    # ap res
    expect(res[:data][:errorMessage]).to include"冻结金额不足"
    expect(res[:result]).to_not eq('S')
  end
end
