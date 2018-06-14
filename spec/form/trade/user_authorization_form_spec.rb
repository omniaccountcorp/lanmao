# coding: utf-8
require 'spec_helper'

RSpec.describe "用户授权" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }
  let(:auth_list) { "TENDER" }
  let(:redirect_url) { "test.omniaccount.com" }

  it "成功" do
    res = client.user_authorization_form(user_no, request_no, auth_list, redirect_url)

    html = create_getway_post(res)

    # ap html
    path = 'tmp/spec_user_authorization_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "request_no: #{request_no}"
    puts "测试 html 导入到：#{path}"
  end
end
