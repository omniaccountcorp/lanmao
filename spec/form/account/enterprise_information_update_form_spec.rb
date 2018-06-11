# coding: utf-8
require 'spec_helper'

RSpec.describe '更新企业信息' do
  let(:platform_user_no) { 'E02' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }

  it '成功跳转到更新form' do
    result = client.enterprise_information_update_form(flow_id, platform_user_no, redirect_url)

    html = create_getway_post(result)


    path = 'tmp/spec_enterprise_information_update_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"

  end
end
