class Prototype < ApplicationRecord
  belongs_to :dict_body
  belongs_to :dict_neck
  belongs_to :dict_pickup
  belongs_to :user, optional: true

end
