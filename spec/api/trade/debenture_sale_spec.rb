# coding: utf-8
require 'spec_helper'

##  TODO：this spec is failed
RSpec.describe "单笔债权出让" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }
  let(:project_no) { "5b1b86f63c328667d0000002" }
  let(:sale_share) { 1.00 }

  it "成功出让" do
    res = client.debenture_sale(request_no, user_no, project_no, sale_share)

    # ap res
    expect(res[:result]).to_not eq('S')
  end
end
