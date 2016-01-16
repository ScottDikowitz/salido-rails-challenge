class Wine < ActiveRecord::Base
  validates :name, :api_id, presence: true, uniqueness: true
end
