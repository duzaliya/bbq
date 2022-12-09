class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }

  validate :user_email_already_registered, unless: -> { user.present? }
  validate :user_is_event_organizer

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  def user_email_already_registered
    if User.find_by(email: user_email).present?
      errors.add(:user_email, :already_registered)
    end
  end

  def user_is_event_organizer
    if user == event.user
      errors.add(:user, :unable_subscribe_to_self_event)
    end
  end
end
