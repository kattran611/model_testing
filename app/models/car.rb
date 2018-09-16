class Car < ApplicationRecord
  # validates_presence_of :model
  # validates_uniqueness_of :model
  # better way to do This
  validates :model , uniqueness: true, presence: true

  has_many :passengers


  def self.by_model
    # Car.order(:make)
    order(:model)
  end

  def self.by_make
    # Car.order(:model)
    order(make: :desc)
  end

  # def self.by_price(direction = :asc)
  #   # Car.order(price: :asc)
  #   # Car.order(price: :desc)
  #   ofer(price: direction)
  # end

  def paint(color)
    self.update(color: color)
  end

  def info
    self.attributes.except('id', 'created_at', 'updated_at')
  end

  # def honk
  #   'Beep Beep!'
  # end
end
