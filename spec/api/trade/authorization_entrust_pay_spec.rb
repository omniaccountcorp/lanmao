# coding: utf-8
require 'spec_helper'

RSpec.describe '委托支付授权' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:borrow_platform_user_no) { "12121212" }
  let(:project_no) { "2000" }
  let(:entrusted_type) { "PERSONAL" }
  let(:entrusted_platform_user_no) { Lanmao::Utils.gen_flow_id }

  it '失败' do
    res = client.authorization_entrust_pay(flow_id, borrow_platform_user_no, project_no, entrusted_type, entrusted_platform_user_no)

    # ap res
    expect(res[:data]["errorMessage"]).to include"用户不存在"
    expect(res[:result]).not_to eq "S"
  end
end
