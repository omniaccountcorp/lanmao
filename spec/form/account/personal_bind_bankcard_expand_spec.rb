# coding: utf-8
require 'spec_helper'

RSpec.describe '个人换绑卡' do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "c01" }

  it '成功跳转' do
    result = client.personal_bind_bankcard_expand_form(request_no, redirect_url, platform_user_no, "LIMIT")

    html = create_getway_post(result)
    # ap html
    path = 'tmp/spec_personal_bind_bankcard_expand_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close


    puts "request_no: #{request_no}"
    puts "测试 html 导入到：#{path}"

  end
end
