class Paket < ApplicationRecord
    has_one_attached :image
    extend FriendlyId
    friendly_id :nama, use: :slugged
    Paket.all.order('created_at DESC').take(8)
end
