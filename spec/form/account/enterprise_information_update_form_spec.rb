# coding: utf-8
require 'spec_helper'

RSpec.describe '更新企业信息' do
  let(:platform_user_no) { 'c01' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }

  it '成功跳转到更新form' do
    result = client.enterprise_information_update(flow_id, platform_user_no, redirect_url)

    html = create_getway_post(result)

    expect(result[:form_data][:serviceName]).to eq "ENTERPRISE_INFORMATION_UPDATE"
    expect(html).to_not eq nil
  end
end
