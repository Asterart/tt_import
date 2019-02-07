require 'csv'

class Candidate < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :notes, dependent: :destroy

  validates :email, presence: true, length: { maximum:255 },
            uniqueness: { case_sensitive: false }

  # probably email should have format validation to
  # check if candidate add valid email but because of
  # 3 records in csv file that are not valid and no
  # information in task what should be done with it
  # I leave it like it is. If it should be done then
  # code below can be used for this instead of the code above:

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #           format: { with: VALID_EMAIL_REGEX},
  #           uniqueness: { case_sensitive: false }


end
