# coding: utf-8
require 'spec_helper'

RSpec.describe "取消债转" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:credit_sale_request_no) { "5b1ddb2f3c32861dc1000001" }

  it "重复取消，告警订单已处理" do
    res = client.cancel_debenture_sale(request_no, credit_sale_request_no)

    # ap res
    expect(res[:data][:errorMessage]).to include"债权出让订单已结束"
    expect(res[:result]).to eq('P')
  end
end
