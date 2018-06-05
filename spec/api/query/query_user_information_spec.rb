# coding: utf-8
require 'spec_helper'

RSpec.describe '用户信息查询' do
  it "查询失败" do
    params = {platformUserNo: 1}

    res = client.query_user_information(1)

    expect(res[:result]).to eq('P')
  end
end
