# coding: utf-8
require 'spec_helper'

RSpec.describe '委托支付授权记录查询' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  
  it '充值交易查询' do
    result = client.query_authorization_entrust_pay_record(flow_id)

    expect(result[:result]).not_to eq 'S'
  end
end
