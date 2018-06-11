# coding: utf-8
require 'spec_helper'

RSpec.describe '用户预处理' do
  let(:user_no) { 'I01' }
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:biz_type) { "TENDER" }
  let(:amount) { 0.10 }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:expired) { (Time.now + 5*60).strftime("%Y%m%d%H%m%s") }
  let(:project_no) { "5b1a6f353c32866a4b000002" }
  let(:share) { nil }
  let(:creditsale_request_no) { nil }
  let(:pre_marketing_amount) { 1.00 }

  it '成功' do
    result = client.user_pre_transaction_form(request_no, user_no, biz_type, amount, expired, redirect_url, project_no, share, creditsale_request_no, pre_marketing_amount)

    html = create_getway_post(result)

    # ap html
    path = 'tmp/spec_user_pre_transaction_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "request_no: #{request_no}"
    puts "测试 html 导入到：#{path}"

  end
end
