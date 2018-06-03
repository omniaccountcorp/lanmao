# coding: utf-8
require 'spec_helper'

RSpec.describe '会员激活' do
  let(:user_no) { 'c01' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:return_url) { 'http://test.omni_account.com' }

  it '获取激活 form' do
    result = client.activate_stocked_user_form(flow_id, return_url, user_no)

    html = create_getway_post(result)

    path = 'tmp/spec_check_password_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
