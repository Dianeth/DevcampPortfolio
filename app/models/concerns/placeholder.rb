module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:, width:)
		"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om"
	end
end