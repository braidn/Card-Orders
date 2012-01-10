require 'spec_helper'
describe AdhesivesController do
  describe 'Get Index' do
    it 'should be successful' do
      get :adhesive => :index
      response.should be_success
    end
  end
end
