require 'rails_helper'

describe ArticlesController, type: :controller do

  # newアクションのテストコード
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  # indexアクションのテストコード
  describe 'GET #index' do
    it "populates an array of articles ordered by created_at DESC" do
      articles = create_list(:article, 3) 
      get :index
      expect(assigns(:articles)).to match(articles.sort{ |a, b| b.created_at <=> a.created_at } )
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

end