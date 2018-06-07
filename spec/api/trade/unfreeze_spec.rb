# coding: utf-8
require 'spec_helper'

RSpec.describe "资金解冻" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "123" }

  it "通信成功" do
    res = client.unfreeze(request_no, 1000, user_no)

    # ap res
    expect(res[:data][:errorMessage]).to include"用户不存在"
    expect(res[:result]).not_to eq('S')
  end
end
