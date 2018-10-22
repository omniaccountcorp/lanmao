# coding: utf-8
require 'spec_helper'

RSpec.describe "单笔债权出让" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }
  let(:project_no) { "5b1b86f63c328667d0000002" }
  let(:sale_share) { 0.01 }

  it "成功出让" do
    res = client.debenture_sale(request_no, user_no, project_no, sale_share)

    # ap res
    expect(res[:data][:status]).to eq "INIT"
    expect(res[:result]).to eq('F')
  end
end
