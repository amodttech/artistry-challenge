class Artist < ApplicationRecord
    has_many :instruments, through: :artistinstruments

    validates :name, uniqueness: true
   

end
