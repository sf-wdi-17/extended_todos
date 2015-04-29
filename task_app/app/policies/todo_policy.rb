class TodoPolicy
	attr_reader :author, :author_id

	def initialize(author, author_id)
		@author = author
		@author_id = author_id.to_i
	end

	def index?
		author.id == author_id
	end
end
