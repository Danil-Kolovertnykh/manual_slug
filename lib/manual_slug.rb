require "manual_slug/version"

module ManualSlug
  autoload :MongoidMod,      'manual_slug/mongoid_mod'
  autoload :ActiveRecordMod, 'manual_slug/active_record_mod'

  extend ActiveSupport::Concern
  if (defined?(RocketCMS) && RocketCMS.mongoid?)
    include ManualSlug::MongoidMod
  elsif defined?(ActiveRecord)
    include ManualSlug::ActiveRecordMod
  elsif defined?(Mongoid)
    include ManualSlug::MongoidMod
  else
    puts "manual_slug was unable to find your ORM, please load after ORM"
  end
end

