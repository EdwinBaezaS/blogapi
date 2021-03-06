# frozen_string_literal: true

# == Schema Information
#
# Table name: jwt_blacklists
#
#  id         :bigint           not null, primary key
#  jti        :string
#  exp        :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class JwtBlacklist < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Denylist
  self.table_name = 'jwt_blacklists'
end
