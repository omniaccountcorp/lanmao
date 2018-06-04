# coding: utf-8
require 'spec_helper'

RSpec.describe '银行卡解绑' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "222" }

  it '正常跳转到 form' do
    result = client.unbind_bankcard_form(flow_id, redirect_url, platform_user_no)

    html = create_getway_post(result)

    # ap result
    expect(result[:form_data][:serviceName]).to eq "UNBIND_BANKCARD"
    expect(html).not_to eq nil
  end
end
