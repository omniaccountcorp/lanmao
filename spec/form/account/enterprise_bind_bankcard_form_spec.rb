# coding: utf-8
require 'spec_helper'

RSpec.describe '企业换绑卡' do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:platform_user_no) { "121212" }
  let(:bank_card_no) { "6228480319999888090" }
  let(:bank_code) { "ABOC" }


  it '成功' do
    result = client.enterprise_bind_bankcard_form(request_no, redirect_url, platform_user_no, bank_card_no, bank_code)

    html = create_getway_post(result)

    expect(result[:form_method]).to_not eq nil
    expect(html).not_to eq nil
  end
end
