class Recipe < ApplicationRecord
	has_and_belongs_to_many :recipes
	has_and_belongs_to_many :users

	include HTTParty
	ENV["FOOD2FORK_KEY"] = '324016b51f0aeb6ba0bd10820ac8b167'
	base_uri 'http://food2fork.com/api'
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.for term
		get("/search", query: { q: term})["recipes"]
	end
end
