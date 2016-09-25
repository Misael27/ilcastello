class Citation < ActiveRecord::Base
  belongs_to: User
  belongs_to: Car
end
