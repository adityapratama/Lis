module Lis
	module ListRepository
		class InMemory
			def initialize
				@lists = {}
				@id = 0
			end

			def fetch
				lists
			end

			def persist(list)
				@id += 1
				list.id = @id
				lists[@id] = list
				list
			end

			def count
				lists.length
			end

			private
			attr_reader :lists

		end
	end
end