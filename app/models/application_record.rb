class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true # what is this?
  require 'net/http'
end
