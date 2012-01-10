require 'spec_helper'
describe AdhesivesController do

  describe 'get index' do
    it 'should be successful' do
      get :index
      response.should be_success
    end
  end

end
