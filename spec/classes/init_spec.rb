require 'spec_helper'
describe 'fastly' do
  context 'with default values for all parameters' do
    it do
      should contain_class('fastly')
    end
  end
end
