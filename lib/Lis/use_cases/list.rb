require "Lis/entities/list"

module Lis
	module UseCases
		class List
			def self.fetch
				lists = Lis.repo.fetch
			end

			def self.count
				count = Lis.repo.count
			end

			def self.add(title)
				list  = Entities::List.new(title: title)

				if list.valid?
					Lis.repo.persist(list)
				else 
					false
				end
			end
		end
	end
end