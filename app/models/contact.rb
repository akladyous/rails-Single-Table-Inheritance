# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  type         :string
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  address      :string
#  city         :string
#  state        :string
#  zip          :string
#  birthday     :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Contact < ApplicationRecord
  scope :friends, -> { where(type: 'Friend') } # Contact.friends
  scope :emergencies, -> { where(type: 'Emergency') }
end
