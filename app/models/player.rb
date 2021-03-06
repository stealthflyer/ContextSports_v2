class Player < ActiveRecord::Base

  belongs_to :team

  has_many :users
  has_many :plays
  has_many :owned_players

  has_many :my_players, :through => :owned_players, :source => :user
  has_many :my_players_plays, :through => :owned_players, :source => :user
  has_many :play_responses, :through => :plays

  # has_many :owned_players, :class_name => "Player", :foreign_key => "player_id", :dependent => :destroy

  # has_many :owned_players, :through => :players, :source => :users


  # validates :play, :presence => true, :uniqueness => { :scope => :play_response }
  # validates :user_id, :presence => true
end
