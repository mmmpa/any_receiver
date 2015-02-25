require 'rails_helper'

RSpec.describe 'request', :type => :request do

  describe 'access and return' do
    [:get, :post, :put, :patch, :delete].each do |http_method|
      context "#{http_method}" do
        let!(:result) do
          self.send(http_method, '/')
          JSON.parse(response.body)
        end

        it { expect(result['method']).to eq(http_method.to_s) }
      end

      context "#{http_method} with param" do
        let!(:result) do
          self.send(http_method, '/', param1: 'content1')
          JSON.parse(response.body)
        end

        it { expect(result['method']).to eq(http_method.to_s) }
        it { expect(result['param1']).to eq('content1') }
      end

      context "#{http_method} with path" do
        let!(:result) do
          self.send(http_method, '/path/path')
          JSON.parse(response.body)
        end

        it { expect(result['method']).to eq(http_method.to_s) }
        it { expect(result['path']).to eq('path/path') }
      end
    end
  end
end
