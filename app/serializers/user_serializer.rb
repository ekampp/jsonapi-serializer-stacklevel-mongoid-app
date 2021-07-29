class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email
  cache_options \
    store: Rails.cache,
    namespace: 'jsonapi-serializer',
    expires_in: 1.hour
end
