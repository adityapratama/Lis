require "Lis/entities/list"

module Lis
	module UseCases
		class AddList
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