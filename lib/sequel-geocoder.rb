# -*- coding: utf-8 -*-
require 'sequel'

module Sequel::Plugins
  module Geocoder
    def self.configure(model, opts={})
      model.instance_eval do
        @geocoder_options[:latitude] = opts[:latitude] || 'latitude'
        @geocoder_options[:longitude] = opts[:longitude] || 'longitude'
      end
    end
  end
end

require 'sequel-geocoder/class_methods'
require 'sequel-geocoder/instance_methods'
require 'sequel-geocoder/dataset_methods'
