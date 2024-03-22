module Demo
  class User < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search,
                    against: [:age, :email, :is_active, :name, :phone, :roles],
                    using: { tsearch: { prefix: true } }

    ROLES = %w[admin member guest].freeze

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    def role?(role)
      roles.include?(role.to_s)
    end
  end
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
