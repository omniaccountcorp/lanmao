# coding: utf-8
require 'spec_helper'

RSpec.describe '标的信息查询' do
  let(:project_no) { "123456" }

  it '查询成功' do
    result = client.query_project_information(project_no)

    # ap result
    expect(result[:data][:status]).to eq "INIT"
    expect(result[:data][:projectNo]).to eq nil
    expect(result[:result]).not_to eq 'S'
  end
end
