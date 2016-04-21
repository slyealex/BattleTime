class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  has_many :user_store_events
  has_many :users, through: :user_store_events
end
