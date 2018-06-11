# coding: utf-8
require 'spec_helper'

RSpec.describe '验密扣费' do
  let(:user_no) { 'I01' }
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:amount) { 1.00 }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:expired) { (Time.now + 5*60).strftime("%Y%m%d%H%m%s") }
  let(:target_platform_user_no) { "SYS_GENERATE_004" }

  it '扣费成功' do
    result = client.verify_deduct_form(request_no, user_no, amount, target_platform_user_no, redirect_url, expired)

    html = create_getway_post(result)

    ap html
    path = 'tmp/spec_verify_deduct_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "request_no: #{request_no}"
    puts "测试 html 导入到：#{path}"
  end
end
