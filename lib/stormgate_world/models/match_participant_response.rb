=begin
#api

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module StormgateWorld
  class MatchParticipantResponse
    attr_accessor :player

    attr_accessor :player_leaderboard_entry

    attr_accessor :race

    attr_accessor :team

    attr_accessor :party

    attr_accessor :mmr

    attr_accessor :mmr_updated

    attr_accessor :mmr_diff

    attr_accessor :result

    attr_accessor :ping

    attr_accessor :scores

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'player' => :'player',
        :'player_leaderboard_entry' => :'player_leaderboard_entry',
        :'race' => :'race',
        :'team' => :'team',
        :'party' => :'party',
        :'mmr' => :'mmr',
        :'mmr_updated' => :'mmr_updated',
        :'mmr_diff' => :'mmr_diff',
        :'result' => :'result',
        :'ping' => :'ping',
        :'scores' => :'scores'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'player' => :'MatchParticipantPlayerResponse',
        :'player_leaderboard_entry' => :'MatchParticipantPlayerLeaderboardEntryResponse',
        :'race' => :'Race',
        :'team' => :'Integer',
        :'party' => :'Integer',
        :'mmr' => :'Float',
        :'mmr_updated' => :'Float',
        :'mmr_diff' => :'Float',
        :'result' => :'MatchResult',
        :'ping' => :'Integer',
        :'scores' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'player',
        :'player_leaderboard_entry',
        :'mmr_updated',
        :'mmr_diff',
        :'result',
        :'ping',
        :'scores'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `StormgateWorld::MatchParticipantResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `StormgateWorld::MatchParticipantResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'player')
        self.player = attributes[:'player']
      end

      if attributes.key?(:'player_leaderboard_entry')
        self.player_leaderboard_entry = attributes[:'player_leaderboard_entry']
      end

      if attributes.key?(:'race')
        self.race = attributes[:'race']
      else
        self.race = nil
      end

      if attributes.key?(:'team')
        self.team = attributes[:'team']
      else
        self.team = nil
      end

      if attributes.key?(:'party')
        self.party = attributes[:'party']
      else
        self.party = nil
      end

      if attributes.key?(:'mmr')
        self.mmr = attributes[:'mmr']
      else
        self.mmr = nil
      end

      if attributes.key?(:'mmr_updated')
        self.mmr_updated = attributes[:'mmr_updated']
      end

      if attributes.key?(:'mmr_diff')
        self.mmr_diff = attributes[:'mmr_diff']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'ping')
        self.ping = attributes[:'ping']
      end

      if attributes.key?(:'scores')
        self.scores = attributes[:'scores']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @race.nil?
        invalid_properties.push('invalid value for "race", race cannot be nil.')
      end

      if @team.nil?
        invalid_properties.push('invalid value for "team", team cannot be nil.')
      end

      if @party.nil?
        invalid_properties.push('invalid value for "party", party cannot be nil.')
      end

      if @mmr.nil?
        invalid_properties.push('invalid value for "mmr", mmr cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @race.nil?
      return false if @team.nil?
      return false if @party.nil?
      return false if @mmr.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          player == o.player &&
          player_leaderboard_entry == o.player_leaderboard_entry &&
          race == o.race &&
          team == o.team &&
          party == o.party &&
          mmr == o.mmr &&
          mmr_updated == o.mmr_updated &&
          mmr_diff == o.mmr_diff &&
          result == o.result &&
          ping == o.ping &&
          scores == o.scores
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [player, player_leaderboard_entry, race, team, party, mmr, mmr_updated, mmr_diff, result, ping, scores].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = StormgateWorld.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end