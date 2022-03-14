class User < ApplicationRecord
    has_may :emergencies, class_name: "Emergency"
    has_many :friends, class_name: "Friend"
end