# coding: utf-8
require 'spec_helper'

RSpec.describe "创建标的" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "123" }
  let(:project_no) { "123456" }
  let(:project_name) { "测试标的" }
  let(:project_amount) { 5000 }
  let(:project_type) { "STANDARDPOWDER" }
  let(:repayment_way) { "FIXED_PAYMENT_MORTGAGE" }
  let(:annnual_interest_rate) { 0.15 }
  let(:project_period) { 90 }

  it "创建成功" do
    res = client.establish_project(request_no, user_no, project_no, project_amount, project_name, project_type, annnual_interest_rate, repayment_way, project_period)

    expect(res[:result]).not_to eq('S')
  end
end
