# coding: utf-8
require 'spec_helper'

RSpec.describe '换卡申请' do
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:original_request_no) { "12121212" }
  let(:audit_type) { "PASSED" }

  it '失败' do
    res = client.audit_bind_card(flow_id, original_request_no, audit_type)

    # ap res
    expect(res[:data]["errorMessage"]).to include"用户换卡审核记录不存在!"
    expect(res[:result]).not_to eq "S"
  end
end
