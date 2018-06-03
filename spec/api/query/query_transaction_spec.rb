# coding: utf-8
require 'spec_helper'

RSpec.describe '单笔交易查询' do
  let(:user_no) { '1' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:transaction_type) { 'RECHARGE' }

  it '充值交易查询' do
    result = client.query_transaction(flow_id, transaction_type, user_no)

    expect(result[:result]).not_to eq 'S'
  end
end
