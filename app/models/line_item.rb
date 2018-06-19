class LineItem < ApplicationRecord
  belongs_to :outfit
  belongs_to :cart
end
