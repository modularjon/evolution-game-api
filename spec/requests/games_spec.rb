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

  before(:all) do
    Game.create!
  end

  after(:all) do
    Game.delete_all
  end

  describe 'GET /games' do
    it 'lists all games' do
      get '/games'

      expect(response).to be_success

      games_response = JSON.parse(response.body)
      expect(games_response.length).to eq(games.count)
      expect(games_response.first['id']).to eq(game['id'])
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
    def article_diff
      { title: 'Two Stupid Tricks' }
    end

    it 'updates an article' do
      post "/articles/#{article.id}", article: article_diff, format: :json

      expect(response.status).to be_success

      article_response = JSON.parse(response.body)
      expect(article_response['id']).to eq(article[:id])
      expect(article_response['title']).to eq(article_diff[:title])
    end
  end

  describe 'DELETE /articles/:id' do
    skip 'deletes an article' do
    end
  end
end
