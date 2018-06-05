# coding: utf-8
require 'spec_helper'

RSpec.describe '修改密码' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "2d22" }

  it '成功跳转 form' do
    result = client.reset_password_form(flow_id, redirect_url, platform_user_no)

    html = create_getway_post(result)

    expect(result[:form_data][:serviceName]).to eq "RESET_PASSWORD"
    expect(html).to_not eq nil
  end
end
