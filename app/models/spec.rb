class Spec < ApplicationRecord
  belongs_to :customer
  has_many: boxes
end
