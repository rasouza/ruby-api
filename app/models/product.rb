class Product < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :sku,  uniqueness: true

  has_paper_trail versions: {
    class_name: 'ProductLog'
  }
end

