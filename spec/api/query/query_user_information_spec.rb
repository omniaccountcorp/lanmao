# coding: utf-8
require 'spec_helper'

RSpec.describe '用户信息查询' do
  it "查询成功" do
    res = client.query_user_information('1')

    # ap res
    expect(res[:data][:userType]).to eq "PERSONAL"
    expect(res[:data][:bankcode]).to eq "CMBC"
    expect(res[:result]).to eq("S")
  end
end
