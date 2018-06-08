# coding: utf-8
require 'spec_helper'

RSpec.describe '修改手机号' do
  let(:platform_user_no) { 'c01' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:check_type) { "LIMIT" }

  it '跳转修改form' do
    result = client.modify_mobile_expand_form(flow_id, platform_user_no, redirect_url, check_type)

    html = create_getway_post(result)

    path = 'tmp/spec_modify_mobile_expand_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"

  end
end
