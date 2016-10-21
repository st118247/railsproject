class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :quotations

  belongs_to :role

  before_validation :assign_status_role

  #validates :banstatus, presence: true
  validates :role_id, presence: true

  #before_save :assign_role

  def assign_status_role
    self.role_id = Role.find_by(name: 'NoRole').id if self.role_id.nil?
    #self.banstatus = 'Banned' if self.banstatus.nil?
  end


end
