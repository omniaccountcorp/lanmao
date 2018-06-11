# coding: utf-8
require 'spec_helper'

RSpec.describe '充值' do
  let(:platform_user_no) { 1 }
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:callback_url) { 'http://test.omniaccount.com' }
  let(:redirect_url) { 'http://test.omniaccount.com' }
  let(:amount) { 500.to_d }
  let(:commission) { 0.to_d }
  let(:expect_pay_company) { "YEEPAY" }
  let(:recharge_way) { "SWIFT" }
  let(:expired) { Time.now + 5 * 60}

  it '失败' do
    res = client.recharge_form(platform_user_no, request_no, amount,
                               expect_pay_company, recharge_way,
                               redirect_url, expired, commission,
                               nil, nil, nil, nil, nil)

    html = create_getway_post(res)
    # ap html
    expect(res[:result]).not_to eq 'S'
  end
end
