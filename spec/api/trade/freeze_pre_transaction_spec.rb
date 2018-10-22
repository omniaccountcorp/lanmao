# coding: utf-8
require 'spec_helper'

RSpec.describe "冻结预处理" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:platform_user_no) { "I01" }
  let(:biz_type) { "PRETRANSACTION" }
  let(:amount) { 0.5 }

  it "成功" do
    res = client.freeze_pre_transaction(request_no, platform_user_no, biz_type, amount)

    # ap res
    expect(res[:data][:status]).to eq "INIT"
    expect(res[:result]).to eq('F')
  end
end
