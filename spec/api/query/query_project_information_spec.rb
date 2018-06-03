# coding: utf-8
require 'spec_helper'

RSpec.describe '标的信息查询' do
  let(:project_no) { Lanmao::Utils.gen_flow_id }
  
  it '标的不存在' do
    result = client.query_project_information(project_no)

    expect(result[:result]).not_to eq 'S'
  end
end
