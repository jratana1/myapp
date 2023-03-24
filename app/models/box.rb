class Box < ApplicationRecord
  belongs_to :spec

  enum status: [ :created, :incomplete, :complete ]
end
