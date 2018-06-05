# coding: utf-8
require 'spec_helper'

RSpec.describe '用户预处理' do
  let(:user_no) { '123' }
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:biz_type) { "TENDER" }
  let(:amount) { 5000.00 }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:expired) { (Time.now + 5*60).strftime("%Y%m%d%H%m%s") }
  let(:project_no) { "test" }
  let(:share) { 5000.00 }
  let(:creditsale_request_no) { "test" }
  let(:pre_marketing_amount) { 50.00 }

  it '失败' do
    result = client.user_pre_transaction_form(request_no, user_no, biz_type, amount, expired, redirect_url, project_no, share, creditsale_request_no, pre_marketing_amount)

    html = create_getway_post(result)

    expect(html).not_to eq nil
  end
end
