# coding: utf-8
require 'spec_helper'

RSpec.describe '自动充值' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:platform_user_no) { "12121212" }
  let(:amount) { "2000" }
  let(:pay_company) { "FUIOU" }
  let(:recharge_way) { "PROXY" }

  it '失败' do
    res = client.direct_recharge(flow_id, platform_user_no, amount, pay_company, recharge_way, 10.0)

    # ap res
    expect(res[:data][:errorMessage]).to include"用户不存在"
    expect(res[:result]).not_to eq "S"
  end
end
