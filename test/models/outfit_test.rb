require 'test_helper'

class OutfitTest < ActiveSupport::TestCase
	test "outfit attributes must not be empty" do
		# свойства товара не должны оставаться пустыми
		outfit = Outfit.new
		assert outfit.invalid?
		assert outfit.errors[:title].any?
		assert outfit.errors[:description].any?
		assert outfit.errors[:price].any?
		assert outfit.errors[:image_url].any?
	end

	test "outfit price must be positive" do
		# цена товара должна быть положительной
		outfit = Outfit.new(title: "My Book Title",
			description: "yyy",
			image_url: "zzz.jpg")
		outfit.price = -1
		assert outfit.invalid?
		assert_equal ["must be greater than or equal to 0.01"],
		outfit.errors[:price]
		# должна быть больше или равна 0.01
		outfit.price = 0
		assert outfit.invalid?
		assert_equal ["must be greater than or equal to 0.01"],
		outfit.errors[:price]
		outfit.price = 1
		assert outfit.valid?
	end

	def new_outfit(image_url)
		Outfit.new( title: "My Book Title",
			description: "yyy",
			price: 1,
			image_url: image_url)
	end

	test "image url" do
		# url изображения
		ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
		http://a.b.c/x/y/z/fred.gif }
		bad = %w{ fred.doc fred.gif/more fred.gif.more }
		ok.each do |name|
			assert new_outfit(name).valid?, "#{name} shouldn't be invalid"
			# не должно быть неприемлемым
		end
		bad.each do |name|
			assert new_outfit(name).invalid?, "#{name} shouldn't be valid"
			# не должно быть приемлемым
		end
	end
end
