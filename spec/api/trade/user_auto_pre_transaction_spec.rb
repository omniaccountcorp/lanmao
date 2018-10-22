# coding: utf-8
require 'spec_helper'

RSpec.describe "授权预处理" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }
  let(:biz_type) { "TRADE" }
  let(:amount) { 1.00 }
  let(:project_no) { "5b1dd8aa3c3286f6b500000e" }
  # let(:sale_share) { 5000.00 }

  it "自动投标成功" do
    res = client.user_auto_pre_transaction(request_no, user_no, "TENDER", amount, project_no)

    # ap res
    expect(res[:data][:status]).to eq "INIT"
    expect(res[:result]).to eq('F')
  end
end
