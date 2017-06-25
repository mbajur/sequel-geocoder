# -*- coding: utf-8 -*-
require 'sequel'

module Sequel::Plugins
  module Geocoder
    def self.configure(model, opts={})
      model.instance_eval do
        @latitude_column = opts[:latitude_column] || 'latitude'
        @longitude_column = opts[:longitude_column] || 'longitude'
      end
    end
  end
end

require 'sequel-geocoder/class_methods'
require 'sequel-geocoder/instance_methods'
require 'sequel-geocoder/dataset_methods'
