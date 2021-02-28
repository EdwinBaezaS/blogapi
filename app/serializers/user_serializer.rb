# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  email            :string
#  name             :string
#  last_name        :string
#  second_last_name :string
#  auth_token       :string
#  posts_count      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class UserSerializer < JSONAPI::Serializable::Resource
  type 'users'

  attributes :id, :name, :last_name, :posts_count, :created_at, :updated_at
end
