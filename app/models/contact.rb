class Contact < ApplicationRecord

    scope :friends -> { (where(type: 'Friend')) }
    scope :emergencies -> { (where(type: 'Emergency'))}
end
