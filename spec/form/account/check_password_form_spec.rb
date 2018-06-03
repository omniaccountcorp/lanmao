# coding: utf-8
require 'spec_helper'

RSpec.describe '验证密码' do
  let(:user_no) { 'c01' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:biz_type_description) { '测试场景' }
  let(:return_url) { 'http://test.omni_account.com' }

  it '验证密码' do
    result = client.check_password_form(flow_id, user_no, biz_type_description, return_url)

    html = create_getway_post(result)

    path = 'tmp/spec_check_password_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
