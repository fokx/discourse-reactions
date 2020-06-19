# frozen_string_literal: true

module DiscourseReactions
  class ReactionUser < ActiveRecord::Base
    self.table_name = 'discourse_reactions_reaction_users'

    belongs_to :reaction, class_name: 'DiscourseReactions::Reaction', counter_cache: true
    belongs_to :user

    delegate :username, to: :user
    delegate :avatar_template, to: :user
  end
end