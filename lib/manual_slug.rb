require "manual_slug/version"

module ManualSlug
  autoload :Mongoid,      'manual_slug/mongoid'
  autoload :ActiveRecord, 'manual_slug/active_record'

  extend ActiveSupport::Concern
  if (defined?(RocketCMS) && RocketCMS.mongoid?)
    include ManualSlug::Mongoid
  elsif defined?(ActiveRecord)
    include ManualSlug::ActiveRecord
  elsif defined?(Mongoid)
    include ManualSlug::Mongoid
  else
    puts "manual_slug was unable to find your ORM, please load after ORM"
  end
end

