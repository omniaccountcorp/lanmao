# coding: utf-8
require 'spec_helper'

RSpec.describe '修改手机号' do
  let(:platform_user_no) { 'ccc' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:redirect_url) { 'http://test.omni_account.com' }
  let(:check_type) { "LIMIT" }

  it '跳转修改form' do
    result = client.modify_mobile_expand_form(flow_id, platform_user_no, redirect_url, check_type)

    html = create_getway_post(result)

    ap result
    expect(result[:form_method]).to_not eq nil
    expect(result[:form_data][:serviceName]).to eq "MODIFY_MOBILE_EXPAND"
    expect(html).not_to eq nil

  end
end
