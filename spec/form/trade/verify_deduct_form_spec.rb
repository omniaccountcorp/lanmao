# coding: utf-8
require 'spec_helper'

RSpec.describe '验密扣费' do
  let(:user_no) { '123' }
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:amount) { 5000.00 }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:expired) { (Time.now + 5*60).strftime("%Y%m%d%H%m%s") }
  let(:target_platform_user_no) { "122" }

  it '通信成功，扣费失败' do
    result = client.verify_deduct_form(request_no, user_no, amount, target_platform_user_no, redirect_url, expired)

    html = create_getway_post(result)

    # ap result
    expect(result[:form_data][:serviceName]).to eq "VERIFY_DEDUCT"
    expect(html).not_to eq nil
  end
end
