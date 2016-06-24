require 'rails_helper'

RSpec.describe GamesController do
  def game_params
    {}
  end

  def game
    Game.first
  end

  def user_params
    {
      email: 'alice@example.com',
      password: 'foobarbaz',
      password_confirmation: 'foobarbaz'
    }
  end

  def user
    User.first
  end

  before(:all) do
    User.create!(user_params)
    Game.create!(game_params)
  end

  after(:all) do
    Game.delete_all
    User.delete_all
  end

  describe 'GET index' do
    before(:each) { get :index }
    it 'is succesful' do
      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      games_collection = JSON.parse(response.body)
      expect(games_collection).not_to be_nil
    end
  end

  describe 'GET show' do
    it 'is successful' do
      get :show, id: game.id

      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      get :show, id: game.id

      game_response = JSON.parse(response.body)
      expect(game_response).not_to be_nil
    end
  end

  context 'when authenticated' do
    before(:each) do
      request.env['HTTP_AUTHORIZATION'] = "Token token=#{user.token}"
    end

    describe 'POST create' do
      before(:each) do
        post :create, game: game_params, format: :json
      end

      it 'is successful' do
        expect(response).to be_successful
      end

      it 'renders a JSON response' do
        game_response = JSON.parse(response.body)
        expect(game_response).not_to be_nil
      end
    end

    describe 'PATCH update' do
      def game_diff
        { game_solved: true }
      end

      before(:each) do
        patch :update, id: game.id, game: game_diff, format: :json
      end

      it 'is successful' do
        expect(response).to be_successful
      end

      it 'renders no response body' do
        expect(response.body).to be_empty
      end
    end
    #
    #   it 'renders a JSON response' do
    #     game_response = JSON.parse(response.body)
    #     expect(game_response).not_to be_nil
    #   end
    # end

    # describe 'DELETE destroy' do
    #   it 'is successful and returns an empty response' do
    #     delete :destroy, id: game.id, format: :json
    #
    #     expect(response).to be_successful
    #     expect(response.body).to be_empty
    #   end
    # end
  end

  context 'when not authenticated' do
    before(:each) do
      request.env['HTTP_AUTHORIZATION'] = nil
    end

    describe 'POST create' do
      it 'is not successful' do
        post :create, game: game_params
        expect(response).not_to be_successful
      end
    end

    describe 'PATCH update' do
      it 'is not successful' do
        patch :update, id: game.id
        expect(response).not_to be_successful
      end
    end

    # describe 'DELETE destroy' do
    #   it 'is not successful' do
    #     delete :destroy, id: game.id
    #     expect(response).not_to be_successful
    #   end
    # end
  end
end
