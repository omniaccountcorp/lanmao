# coding: utf-8
require 'spec_helper'

RSpec.describe '修改密码' do
  let(:user_no) { 'c01' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:is_skip) { 'Remember' }
  let(:return_url) { 'http://test.omni_account.com' }

  it '借款用户个人签约' do
    result = client.reset_password_form(flow_id, user_no, is_skip, return_url)

    html = create_getway_post(result)

    path = 'tmp/spec_reset_password_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
