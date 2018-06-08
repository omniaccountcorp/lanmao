# coding: utf-8
require 'spec_helper'

RSpec.describe '用户信息查询' do
  it "查询失败" do
    params = {platformUserNo: 'c02'}

    res = client.query_user_information('c01')

    # ap res
    expect(res[:data][:userType]).to eq "PERSONAL"
    expect(res[:data][:bankcode]).to eq "ICBK"
    expect(res[:result]).to eq("S")
  end
end
