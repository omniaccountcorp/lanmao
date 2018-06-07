# coding: utf-8
require 'spec_helper'

RSpec.describe "取消用户授权" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:platform_user_no) { "123" }
  let(:auth_list) {"TENDER"}

  it "请求成功，用户不存在" do
    res = client.cancel_user_authorization(request_no, platform_user_no, auth_list)

    # ap res
    expect(res[:data][:errorMessage]).to include"用户不存在"
    expect(res[:result]).not_to eq('S')
  end
end
