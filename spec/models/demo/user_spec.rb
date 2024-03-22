require "rails_helper"

RSpec.describe Demo::User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: demo_users
#
#  id         :bigint           not null, primary key
#  age        :integer
#  bio        :text
#  email      :string           not null
#  is_active  :boolean          default(TRUE)
#  name       :string           not null
#  phone      :string
#  roles      :jsonb            not null
#  settings   :jsonb            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_demo_users_on_email  (email) UNIQUE
#  index_demo_users_on_roles  (roles) USING gin
#
