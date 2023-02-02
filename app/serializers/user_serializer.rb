class UserSerializer < ActiveModel::Serializer
  attributes :email, :password, :user_type

end
