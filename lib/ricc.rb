require "ricc/version"
require "ricc/ciao"
module Ricc
  class Error < StandardError; end
  # Your code goes here...
  def self.hi(n = "Default Name (eg, Riccardo)")
    ciao = Ciao
    Ciao.name(n)
  end

end
