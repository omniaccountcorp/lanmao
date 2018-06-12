# coding: utf-8
require 'spec_helper'

RSpec.describe '换卡申请' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:original_request_no) { "5b1a28be3c32868e3d000001" }
  let(:audit_type) { "PASSED" }


  it '处理成功' do
    result = client.audit_bind_card(flow_id, original_request_no, audit_type)
    # ap result
    expect(result[:result]).to eq 'P'
    expect(result[:data][:errorMessage]).to include"已经审核"
  end
end
