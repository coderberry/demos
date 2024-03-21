class Demo::User < ApplicationRecord
  ROLES = %w[admin member guest].freeze

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def role?(role)
    roles.include?(role.to_s)
  end
end
