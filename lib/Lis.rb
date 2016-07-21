require "Lis/version"
require "Lis/list_repository/in_memory"
require "Lis/use_cases/add_list"

module Lis
  class << self
  	attr_accessor :repo

  	def configure
  		yield self
  	end

  	def repo
  		@repo ||= ListRepository::InMemory.new
  	end

  	def add_list(title)
  		UseCases::AddList.add(title)
  	end
  end
end
