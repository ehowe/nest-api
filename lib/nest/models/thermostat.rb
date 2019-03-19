class Nest::Thermostat
  include Nest::Model

  identity :id, aliases: [:device_id]

  attribute :ambient_temperature_c,       type: :float
  attribute :ambient_temperature_f,       type: :float
  attribute :away_temperature_high_c,     type: :float
  attribute :away_temperature_high_f,     type: :float
  attribute :away_temperature_low_c,      type: :float
  attribute :away_temperature_low_f,      type: :float
  attribute :can_cool,                    type: :boolean
  attribute :can_heat,                    type: :boolean
  attribute :device_id
  attribute :eco_temperature_high_c,      type: :float
  attribute :eco_temperature_high_f,      type: :float
  attribute :eco_temperature_low_c,       type: :float
  attribute :eco_temperature_low_f,       type: :float
  attribute :fan_timer_active,            type: :boolean
  attribute :fan_timer_duration,          type: :float
  attribute :fan_timer_timeout
  attribute :has_fan,                     type: :boolean
  attribute :has_leaf,                    type: :boolean
  attribute :humidity,                    type: :float
  attribute :hvac_mode
  attribute :hvac_state
  attribute :is_locked,                   type: :boolean
  attribute :is_online,                   type: :boolean
  attribute :is_using_emergency_heat,     type: :boolean
  attribute :label
  attribute :last_connection
  attribute :locale
  attribute :locked_temp_max_c,           type: :float
  attribute :locked_temp_max_f,           type: :float
  attribute :locked_temp_min_c,           type: :float
  attribute :locked_temp_min_f,           type: :float
  attribute :name
  attribute :name_long
  attribute :previous_hvac_mode
  attribute :software_version
  attribute :structure_id
  attribute :sunlight_correction_active,  type: :boolean
  attribute :sunlight_correction_enabled, type: :boolean
  attribute :target_temperature_c,        type: :float
  attribute :target_temperature_f,        type: :float
  attribute :target_temperature_high_c,   type: :float
  attribute :target_temperature_high_f,   type: :float
  attribute :target_temperature_low_c,    type: :float
  attribute :target_temperature_low_f,    type: :float
  attribute :temperature_scale
  attribute :time_to_target
  attribute :time_to_target_training
  attribute :where_id
  attribute :where_name
end

