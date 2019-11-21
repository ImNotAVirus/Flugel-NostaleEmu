defmodule WorldServer.Enums.Bcard do
  @moduledoc """
  TODO: Documentation for WorldServer.Enums.Bcard
  """

  @spec relation_type(atom) :: non_neg_integer
  def relation_type(:npc_monster), do: 0
  def relation_type(:item), do: 1
  def relation_type(:skill), do: 2
  def relation_type(:card), do: 3
  def relation_type(:global), do: 4

  @spec type(atom) :: non_neg_integer
  def type(:special_attack), do: 1
  def type(:special_defence), do: 2
  def type(:attack_power), do: 3
  def type(:target), do: 4
  def type(:critical), do: 5
  def type(:special_critical), do: 6
  def type(:element), do: 7
  def type(:increase_damage), do: 8
  def type(:defence), do: 9
  def type(:dodge_and_defence_percent), do: 10
  def type(:block), do: 11
  def type(:absorption), do: 12
  def type(:element_resistance), do: 13
  def type(:enemy_element_resistance), do: 14
  def type(:damage), do: 15
  def type(:guaranted_dodge_ranged_attack), do: 16
  def type(:morale), do: 17
  def type(:casting), do: 18
  def type(:move), do: 19
  def type(:reflection), do: 20
  def type(:drain_and_steal), do: 21
  def type(:healing_burning_and_casting), do: 22
  def type(:hp_mp), do: 23
  def type(:specialisation_buff_resistance), do: 24
  def type(:buff), do: 25
  def type(:summons), do: 26
  def type(:special_effects), do: 27
  def type(:capture), do: 28
  def type(:special_damage_and_explosions), do: 29
  def type(:special_effects2), do: 30
  def type(:calculating_level), do: 31
  def type(:recovery), do: 32
  def type(:max_hp_mp), do: 33
  def type(:mult_attack), do: 34
  def type(:mult_defence), do: 35
  def type(:time_circle_skills), do: 36
  def type(:recovery_and_damage_percent), do: 37
  def type(:count), do: 38
  def type(:no_defeat_and_no_damage), do: 39
  def type(:special_actions), do: 40
  def type(:mode), do: 41
  def type(:no_characteristic_value), do: 42
  def type(:light_and_shadow), do: 43
  def type(:item), do: 44
  def type(:debuff_resistance), do: 45
  def type(:special_behaviour), do: 46
  def type(:quest), do: 47
  def type(:second_sp_card), do: 48
  def type(:sp_card_upgrade), do: 49
  def type(:huge_snowman), do: 50
  def type(:drain), do: 51
  def type(:boss_monsters_skill), do: 52
  def type(:lord_hatus), do: 53
  def type(:lord_calvinas), do: 54
  def type(:se_specialist), do: 55
  def type(:summoned_monster_attack), do: 56
  def type(:fourth_glacernon_family_raid), do: 57
  def type(:bear_spirit), do: 58
  def type(:summon_skill), do: 59
  def type(:inflict_skill), do: 60
  def type(:hide_barrel_skill), do: 62
  def type(:focus_enemy_attention_skill), do: 63
  def type(:taunt_skill), do: 64
  def type(:fire_cannoneer_range_buff), do: 65
  def type(:vulcano_element_buff), do: 66
  def type(:damage_converting_skill), do: 67
  def type(:meditation_skill), do: 68
  def type(:falcon_skill), do: 69
  def type(:absorption_and_power_skill), do: 70
  def type(:leona_passive_skill), do: 71
  def type(:fear_skill), do: 72
  def type(:sniper_attack), do: 73
  def type(:frozen_debuff), do: 74
  def type(:jump_back_push), do: 75
  def type(:fairy_xp_increase), do: 76
  def type(:summon_and_recover_hp), do: 77
  def type(:team_arena_buff), do: 78
  def type(:arena_camera), do: 79
  def type(:dark_clone_summon), do: 80
  def type(:absorbed_spirit), do: 81
  def type(:anger_skill), do: 82
  def type(:meteorite_teleport), do: 83
  def type(:steal_buff), do: 84
  def type(:unknown), do: 85
  def type(:effect_summon), do: 86
  def type(:hero), do: 87
  def type(:news_class), do: 89
end