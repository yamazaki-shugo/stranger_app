class Record < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture

    
end
