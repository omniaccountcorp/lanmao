# coding: utf-8
require 'spec_helper'

RSpec.describe '自动提现' do
  let(:user_no) { '1' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:withdraw_type) { "NORMAL" }
  let(:amount) { 500 }
  let(:commission) { nil }

  it '失败' do
    res = client.auto_withdraw(user_no, flow_id, withdraw_type, amount, commission)

    expect(res[:result]).not_to eq "S"
  end
end
