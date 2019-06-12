class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, ->{where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om"
		self.thumb_image ||= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0EP39WNrRjFyJo1qbAM-N_BYbPolRP-UdTxWfR2pg1Zpb8om"
	end
end
