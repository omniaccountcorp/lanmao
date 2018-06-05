# coding: utf-8
require 'spec_helper'

RSpec.describe "冻结预处理" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:platform_user_no) { "123" }
  let(:biz_type) { "PRETRANSACTION" }
  let(:amount) { 200 }

  it "失败" do
    res = client.freeze_pre_transaction(request_no, platform_user_no, biz_type, amount)

    # ap res
    expect(res[:data]["errorMessage"]).to include "用户不存在"
    expect(res[:result]).not_to eq('S')
  end
end
