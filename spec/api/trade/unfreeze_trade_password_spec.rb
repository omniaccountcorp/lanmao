# coding: utf-8
require 'spec_helper'

RSpec.describe "交易密码解冻" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }

  it "成功" do
    res = client.unfreeze_trade_password(request_no, user_no)

    # ap res
    expect(res[:data][:errorMessage]).to include"该用户密码未被冻结"
    expect(res[:result]).to_not eq('S')
  end
end
