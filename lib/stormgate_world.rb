=begin
#api

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

# Common files
require 'stormgate_world/api_client'
require 'stormgate_world/api_error'
require 'stormgate_world/version'
require 'stormgate_world/configuration'

# Models
require 'stormgate_world/models/activity_statistics'
require 'stormgate_world/models/activity_statistics_activity'
require 'stormgate_world/models/activity_statistics_entry'
require 'stormgate_world/models/aggregation'
require 'stormgate_world/models/countries_statistics'
require 'stormgate_world/models/countries_statistics_entry'
require 'stormgate_world/models/dump_format'
require 'stormgate_world/models/error_response'
require 'stormgate_world/models/leaderboard'
require 'stormgate_world/models/leaderboard_dump_response'
require 'stormgate_world/models/leaderboard_entry_history'
require 'stormgate_world/models/leaderboard_entry_history_row'
require 'stormgate_world/models/leaderboard_entry_response'
require 'stormgate_world/models/leaderboard_order'
require 'stormgate_world/models/leaderboard_response'
require 'stormgate_world/models/league'
require 'stormgate_world/models/match_participant_player_leaderboard_entry_response'
require 'stormgate_world/models/match_participant_player_response'
require 'stormgate_world/models/match_participant_response'
require 'stormgate_world/models/match_response'
require 'stormgate_world/models/match_result'
require 'stormgate_world/models/match_state'
require 'stormgate_world/models/matches_response'
require 'stormgate_world/models/player_activity_stats'
require 'stormgate_world/models/player_activity_stats_race'
require 'stormgate_world/models/player_matches_response'
require 'stormgate_world/models/player_matchups_stats'
require 'stormgate_world/models/player_matchups_stats_entry'
require 'stormgate_world/models/player_matchups_stats_matchup'
require 'stormgate_world/models/player_opponents_stats'
require 'stormgate_world/models/player_opponents_stats_opponent'
require 'stormgate_world/models/player_response'
require 'stormgate_world/models/player_stats_entry'
require 'stormgate_world/models/player_stats_entry_aggregated'
require 'stormgate_world/models/player_stats_entry_num_breakdown'
require 'stormgate_world/models/profile_privacy'
require 'stormgate_world/models/race'
require 'stormgate_world/models/resolution'
require 'stormgate_world/models/servers_statistics'
require 'stormgate_world/models/servers_statistics_entry'
require 'stormgate_world/models/stats_by_time'
require 'stormgate_world/models/stats_by_time_entry'
require 'stormgate_world/models/stats_by_time_history_point'
require 'stormgate_world/models/stats_by_time_match_length'
require 'stormgate_world/models/stats_by_time_match_length_entry'

# APIs
require 'stormgate_world/api/leaderboard_entries_api'
require 'stormgate_world/api/leaderboards_api'
require 'stormgate_world/api/matches_api'
require 'stormgate_world/api/players_api'
require 'stormgate_world/api/statistics_api'

module StormgateWorld
  class << self
    # Customize default settings for the SDK using block.
    #   StormgateWorld.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
