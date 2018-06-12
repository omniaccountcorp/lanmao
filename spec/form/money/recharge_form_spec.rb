# coding: utf-8
require 'spec_helper'

RSpec.describe '充值' do
  let(:platform_user_no) { "c01" }
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:callback_url) { 'http://test.omniaccount.com' }
  let(:redirect_url) { 'http://test.omniaccount.com' }
  let(:amount) { 500.to_d }
  let(:commission) { 10.to_d }
  let(:expect_pay_company) { "YEEPAY" }
  let(:recharge_way) { "SWIFT" }
  let(:expired) { (Time.now + 5 * 60).strftime("%Y%m%d%H%M%S")}

  it '成功' do
    res = client.recharge(platform_user_no, request_no, amount,
                          expect_pay_company, redirect_url, expired, commission,
                          "ICBK", nil, nil, nil, nil, recharge_way)

    html = create_getway_post(res)
    # ap html
    path = 'tmp/spec_recharge_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "request_no: #{request_no}"
    puts "测试 html 导入到：#{path}"

  end
end
