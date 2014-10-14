class Report < ActiveRecord::Base
  attr_accessible :report_title,:report_body_text, :user_id,
                 :timespans_attributes ,:worktimes_attributes
  belongs_to :user

  #has_many :timespans ,:worktimes
  has_many :worktimes
  #accepts_nested_attributes_for :timespans#, :worktimes, allow_destroy: true
  accepts_nested_attributes_for :worktimes, allow_destroy: true
end

