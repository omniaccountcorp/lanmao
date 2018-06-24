# coding: utf-8
require 'spec_helper'

RSpec.describe '提现' do
  let(:platform_user_no) { "c01" }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omniaccount.com' }
  let(:amount) { 5.to_d }
  let(:commission) { 1.to_d }
  let(:expired) { (Time.now + 5 * 60).strftime("%Y%m%d%H%M%S")}

  it '成功' do
    res = client.withdraw_form(flow_id, platform_user_no, expired, redirect_url, amount)

    html = create_getway_post(res)
    # ap html
    path = 'tmp/spec_withdraw_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
