class Message < ApplicationRecord
	validates :mailer, presence: true
	validates :body, presence: true
end
