# coding: utf-8
require 'spec_helper'

RSpec.describe '充值' do
  let(:platform_user_no) { 1 }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omniaccount.com' }
  let(:amount) { 500.to_d }
  let(:commission) { 0.to_d }
  let(:expired) { Time.now + 5 * 60}

  it '失败' do
    res = client.withdraw_form(flow_id, platform_user_no, expired, redirect_url, amount)

    html = create_getway_post(res)
    # ap html
    expect(res[:result]).not_to eq 'S'
  end
end
