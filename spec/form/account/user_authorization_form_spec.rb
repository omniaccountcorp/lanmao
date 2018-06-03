# coding: utf-8
require 'spec_helper'

RSpec.describe "用户授权" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "123456" }
  let(:auth_list) { "TENDER" }
  let(:redirect_url) { "test.omniaccount.com" }

  it "失败" do
    res = client.user_authorization(user_no, request_no, auth_list, redirect_url)

    html = create_getway_post(res)

    expect(html).not_to eq nil
  end
end
