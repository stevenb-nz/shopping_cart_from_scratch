require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  before do
    get :index
  end

  describe '#index' do
    it "returns an http status code of 200 OK" do
      expect(response).to have_http_status(200)
    end
    it "renders the index page" do
      expect(response).to render_template(:index)
    end
  end

end
