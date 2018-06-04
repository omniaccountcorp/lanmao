# coding: utf-8
require 'spec_helper'

RSpec.describe "单笔债权出让" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "123" }
  let(:project_no) { "123456" }
  let(:sale_share) { 5000.00 }

  it "失败" do
    res = client.debenture_sale(request_no, user_no, project_no, sale_share)

    expect(res[:result]).not_to eq('S')
  end
end
