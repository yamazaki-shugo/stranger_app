class Record < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :prefecture

    with_options presence: true do 
        validates :title, length: { maximum: 30 }
        validates :content, length: { maximum: 660 }
        validates :place, length: { maximum: 23 }
        validates :prefecture_id, numericality: { other_than: 1, message: "を選択してください" }
        validates :image
    end
end
