require "Lis/version"
require "Lis/list_repository/in_memory"
require "Lis/use_cases/list"

module Lis
  class << self
  	attr_accessor :repo

  	def configure
  		yield self
  	end

  	def repo
  		@repo ||= ListRepository::InMemory.new
  	end

    def fetch
      UseCases::List.fetch
    end

    def count
      UseCases::List.count
    end
  	
    def add_list(title)
  		UseCases::List.add(title)
  	end
  end
end
