# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  first_name :string(100)      not null
#  last_name  :string(100)      not null
#  username   :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  users_username_unique_idx  (username) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
end
