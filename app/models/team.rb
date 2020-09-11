class Team < ApplicationRecord
    has_many :users
    has_one :timeline, :dependent => :destroy
end
