# coding: utf-8
require 'spec_helper'

RSpec.describe "授权预处理" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:platform_user_id) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "123" }
  let(:project_no) { "123456" }
  let(:sale_share) { 5000.00 }

  it "失败" do
    res = client.user_auto_pre_transaction(request_no, platform_user_id, "REPAYMENT", 1000, project_no)

    expect(res[:result]).not_to eq('S')
  end
end
