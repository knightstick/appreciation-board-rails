class Appreciation < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true

  class << self
    def recent
      where('created_at > :start_time', start_time: 1.month.ago)
    end

    def by_recency
      order(created_at: :desc)
    end
  end
end
