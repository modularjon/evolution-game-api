require 'rails_helper'

RSpec.describe 'Games API' do
  def game_params
    {}
  end

  def games
    Game.all
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

  describe 'GET /games' do
    it 'lists all games' do
      get '/games'

      expect(response).to be_success

      games_response = JSON.parse(response.body)
      expect(games_response.length).to eq(games.count)
      expect(games_response.first['id']).to eq(game.id)
    end
  end

  describe 'GET /games/:id' do
    it 'shows one game' do
      get "/games/#{game.id}"

      expect(response).to be_success

      game_response = JSON.parse(response.body)
      expect(game_response['id']).to eq(game.id)

      # for future
      # expect(game_response['ParentTaxon_id']).not_to be_nil
    end
  end

  context 'when authenticated' do
    def headers
      {
        'HTTP_AUTHORIZATION' => "Token token=#{user.token}"
      }
    end

    describe 'POST /games' do
      it 'creates a game' do
        post '/games'

        expect(response.status).to eq(201)

        game_response = JSON.parse(response.body)
        expect(game_response['id']).not_to be_nil

        # for future
        # expect(game_response['ParentTaxon_id']).not_to be_nil
      end
    end

    describe 'PATCH /games/:id' do
      def game_diff
        { game_solved: true }
      end

      it 'updates a game' do
        post "/articles/#{game.id}", game: game_diff, format: :json

        expect(response.status).to be_success

        game_response = JSON.parse(response.body)
        expect(game_response['id']).to eq(game.id)
        expect(game_response['game_solved']).to eq(game_diff[:game_solved])
      end
    end

    # describe 'DELETE /articles/:id' do
    #   skip 'deletes an article' do
    #   end
    # end
  end
end
