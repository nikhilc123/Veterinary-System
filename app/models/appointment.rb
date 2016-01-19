class Appointment < ActiveRecord::Base
  
  has_one :doctor, foreign_key: 'id'
  validates :pet, presence: true
  validates :customer, presence: true
  validates :reason, presence: true
  validates :date, presence: true
  validate :date_in_past , :on => :create
  
 private

  def date_in_past
    if date < Date.today
      self.errors.add(:base, "Old date selected, rectify!")
    end
  end
end
