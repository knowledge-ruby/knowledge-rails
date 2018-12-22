# frozen_string_literal: true

module Knowledge
  module Setters
    #
    # === Description
    #
    # Using rails app configuration.
    #
    # === Usage
    #
    # @example:
    #
    #   Knowledge::Setters::Rails.new.set(name: :foo, value: 'bar')
    #
    class Rails < Base
      # == Instance methods ============================================================================================

      #
      # Sets the variable in rails app.
      #
      # === Parameters
      #
      # @param :name [String | Symbol]
      # @param :value [Any]
      #
      def set(name:, value:)
        ::Rails.application.config.public_send("#{name}=", value)
      end
    end
  end
end

Knowledge::Setters.config.default = Knowledge::Setters::Rails