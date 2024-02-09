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
  class LeaderboardEntryResponse
    attr_accessor :leaderboard_entry_id

    attr_accessor :leaderboard

    attr_accessor :player_id

    attr_accessor :anonymous

    attr_accessor :nickname

    attr_accessor :nickname_discriminator

    attr_accessor :rank

    attr_accessor :race

    attr_accessor :league

    attr_accessor :tier

    attr_accessor :mmr

    attr_accessor :max_confirmed_mmr

    attr_accessor :points

    attr_accessor :wins

    attr_accessor :losses

    attr_accessor :ties

    attr_accessor :matches

    attr_accessor :win_rate

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
        :'leaderboard_entry_id' => :'leaderboard_entry_id',
        :'leaderboard' => :'leaderboard',
        :'player_id' => :'player_id',
        :'anonymous' => :'anonymous',
        :'nickname' => :'nickname',
        :'nickname_discriminator' => :'nickname_discriminator',
        :'rank' => :'rank',
        :'race' => :'race',
        :'league' => :'league',
        :'tier' => :'tier',
        :'mmr' => :'mmr',
        :'max_confirmed_mmr' => :'max_confirmed_mmr',
        :'points' => :'points',
        :'wins' => :'wins',
        :'losses' => :'losses',
        :'ties' => :'ties',
        :'matches' => :'matches',
        :'win_rate' => :'win_rate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'leaderboard_entry_id' => :'String',
        :'leaderboard' => :'Leaderboard',
        :'player_id' => :'String',
        :'anonymous' => :'Boolean',
        :'nickname' => :'String',
        :'nickname_discriminator' => :'String',
        :'rank' => :'Integer',
        :'race' => :'Race',
        :'league' => :'String',
        :'tier' => :'Integer',
        :'mmr' => :'Float',
        :'max_confirmed_mmr' => :'Float',
        :'points' => :'Float',
        :'wins' => :'Integer',
        :'losses' => :'Integer',
        :'ties' => :'Integer',
        :'matches' => :'Integer',
        :'win_rate' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'player_id',
        :'nickname',
        :'nickname_discriminator',
        :'rank',
        :'league',
        :'tier',
        :'max_confirmed_mmr',
        :'points',
        :'ties',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `StormgateWorld::LeaderboardEntryResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `StormgateWorld::LeaderboardEntryResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'leaderboard_entry_id')
        self.leaderboard_entry_id = attributes[:'leaderboard_entry_id']
      else
        self.leaderboard_entry_id = nil
      end

      if attributes.key?(:'leaderboard')
        self.leaderboard = attributes[:'leaderboard']
      else
        self.leaderboard = nil
      end

      if attributes.key?(:'player_id')
        self.player_id = attributes[:'player_id']
      end

      if attributes.key?(:'anonymous')
        self.anonymous = attributes[:'anonymous']
      else
        self.anonymous = nil
      end

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.key?(:'nickname_discriminator')
        self.nickname_discriminator = attributes[:'nickname_discriminator']
      end

      if attributes.key?(:'rank')
        self.rank = attributes[:'rank']
      end

      if attributes.key?(:'race')
        self.race = attributes[:'race']
      else
        self.race = nil
      end

      if attributes.key?(:'league')
        self.league = attributes[:'league']
      end

      if attributes.key?(:'tier')
        self.tier = attributes[:'tier']
      end

      if attributes.key?(:'mmr')
        self.mmr = attributes[:'mmr']
      else
        self.mmr = nil
      end

      if attributes.key?(:'max_confirmed_mmr')
        self.max_confirmed_mmr = attributes[:'max_confirmed_mmr']
      end

      if attributes.key?(:'points')
        self.points = attributes[:'points']
      end

      if attributes.key?(:'wins')
        self.wins = attributes[:'wins']
      else
        self.wins = nil
      end

      if attributes.key?(:'losses')
        self.losses = attributes[:'losses']
      else
        self.losses = nil
      end

      if attributes.key?(:'ties')
        self.ties = attributes[:'ties']
      end

      if attributes.key?(:'matches')
        self.matches = attributes[:'matches']
      else
        self.matches = nil
      end

      if attributes.key?(:'win_rate')
        self.win_rate = attributes[:'win_rate']
      else
        self.win_rate = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @leaderboard_entry_id.nil?
        invalid_properties.push('invalid value for "leaderboard_entry_id", leaderboard_entry_id cannot be nil.')
      end

      if @leaderboard.nil?
        invalid_properties.push('invalid value for "leaderboard", leaderboard cannot be nil.')
      end

      if @anonymous.nil?
        invalid_properties.push('invalid value for "anonymous", anonymous cannot be nil.')
      end

      if @race.nil?
        invalid_properties.push('invalid value for "race", race cannot be nil.')
      end

      if @mmr.nil?
        invalid_properties.push('invalid value for "mmr", mmr cannot be nil.')
      end

      if @wins.nil?
        invalid_properties.push('invalid value for "wins", wins cannot be nil.')
      end

      if @losses.nil?
        invalid_properties.push('invalid value for "losses", losses cannot be nil.')
      end

      if @matches.nil?
        invalid_properties.push('invalid value for "matches", matches cannot be nil.')
      end

      if @win_rate.nil?
        invalid_properties.push('invalid value for "win_rate", win_rate cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @leaderboard_entry_id.nil?
      return false if @leaderboard.nil?
      return false if @anonymous.nil?
      return false if @race.nil?
      return false if @mmr.nil?
      return false if @wins.nil?
      return false if @losses.nil?
      return false if @matches.nil?
      return false if @win_rate.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          leaderboard_entry_id == o.leaderboard_entry_id &&
          leaderboard == o.leaderboard &&
          player_id == o.player_id &&
          anonymous == o.anonymous &&
          nickname == o.nickname &&
          nickname_discriminator == o.nickname_discriminator &&
          rank == o.rank &&
          race == o.race &&
          league == o.league &&
          tier == o.tier &&
          mmr == o.mmr &&
          max_confirmed_mmr == o.max_confirmed_mmr &&
          points == o.points &&
          wins == o.wins &&
          losses == o.losses &&
          ties == o.ties &&
          matches == o.matches &&
          win_rate == o.win_rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [leaderboard_entry_id, leaderboard, player_id, anonymous, nickname, nickname_discriminator, rank, race, league, tier, mmr, max_confirmed_mmr, points, wins, losses, ties, matches, win_rate].hash
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