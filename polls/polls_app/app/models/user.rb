# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  user_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :polls,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :Poll

end
