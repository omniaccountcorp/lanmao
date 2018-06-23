# coding: utf-8
require 'spec_helper'

RSpec.describe '单笔交易查询' do
  let(:request_no_recharge) { "5b1a388f3c32864f83000001" }
  let(:transaction_type_recharge) { 'RECHARGE' }

  let(:request_no_withdraw) { "5b1a47fc3c328669bf000001" }
  let(:transaction_type_withdraw) { 'WITHDRAW' }

  it '充值交易查询' do
    result = client.query_transaction(request_no_recharge, transaction_type_recharge)

    ap result
    expect(result[:result]).to eq 'S'
    expect(result[:data][:records].first[:amount]).to eq 500
  end

  it '提现交易查询' do
    result = client.query_transaction(request_no_withdraw, transaction_type_withdraw)

    # ap result
    expect(result[:result]).to eq 'S'
    expect(result[:data][:records].first[:amount]).to eq 5
  end
end
