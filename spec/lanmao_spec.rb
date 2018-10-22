# coding: utf-8
require 'spec_helper'

RSpec.describe Lanmao do
  it "has a version number" do
    expect(Lanmao::VERSION).not_to be nil
  end

  it "测试通信" do
    params = {platformUserNo: 1}

    res = client.query_user_information("1")

    expect(res[:result]).to eq('S')
  end
end
