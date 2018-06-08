# coding: utf-8
require 'spec_helper'

RSpec.describe '修改密码' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "c01" }

  it '成功跳转 form' do
    result = client.reset_password_form(flow_id, platform_user_no, redirect_url)

    html = create_getway_post(result)


    path = 'tmp/spec_personal_register_expand_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"

    expect(result[:form_data][:serviceName]).to eq "RESET_PASSWORD"
    expect(html).to_not eq nil
  end
end
