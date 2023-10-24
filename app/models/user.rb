class User < ApplicationRecord
  has_many :comments
  has_many :debate_responses
  has_many :reads

  def update_consecutive_days(last_access_date)
    if last_access_date == Date.today - 1
      self.consecutive_days += 1
    else
      self.consecutive_days = 1
    end

    self.last_login_date = Date.today
    save
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def last_read_date
    last_read&.created_at&.to_date
  end

  def last_read
    reads.order(created_at: :desc).first
  end

end
