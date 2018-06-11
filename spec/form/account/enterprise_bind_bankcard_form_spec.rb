# coding: utf-8
require 'spec_helper'

RSpec.describe '企业换绑卡' do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "E02" }
  let(:bank_card_no) { "6212263201023550007" }
  let(:bank_code) { "ABOC" }


  it '成功' do
    result = client.enterprise_bind_bankcard_form(request_no, redirect_url, platform_user_no, bank_card_no, bank_code)

    html = create_getway_post(result)


    path = 'tmp/spec_enterprise_bind_bankcard_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close


    puts "request_no: #{request_no}"
    puts "测试 html 导入到：#{path}"

  end
end
