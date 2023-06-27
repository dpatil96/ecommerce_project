class Product < ApplicationRecord
    paginates_per 2
    has_one_attached :main_image
    has_many :reviews

    validates :name, presence: true

    validates :name, confirmation: true

    validates :price, numericality: true

    validates :name, uniqueness: {case_sensitive: false }

    
end
