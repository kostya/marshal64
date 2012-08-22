require 'base64'

module Marshal64
  VERSION = "0.1"
  
  class << self
    def dump(obj)
      Base64::encode64(Marshal.dump(obj))
    end  
    alias :encode :dump

    def load(str)
      Marshal.load(Base64::decode64(str))
    end  
    alias :decode :load
  end

end