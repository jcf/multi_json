require 'jrjackson' unless defined?(::JrJackson)
require 'multi_json/adapter'

module MultiJson
  module Adapters
    class JrJacksonRaw < Adapter
      ParseError = ::JrJackson::ParseError

      def load(string, options={}) #:nodoc:
        ::JrJackson::Raw.parse_raw(string)
      end

      def dump(object, options={}) #:nodoc:
        ::JrJackson::Raw.dump(object)
      end
    end
  end
end
