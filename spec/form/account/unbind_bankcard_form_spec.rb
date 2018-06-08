# coding: utf-8
require 'spec_helper'

RSpec.describe '银行卡解绑' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "c01" }

  it '正常跳转到 form' do
    result = client.unbind_bankcard_form(flow_id, redirect_url, platform_user_no)

    html = create_getway_post(result)
    # ap result
    path = 'tmp/spec_unbind_bankcard_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
