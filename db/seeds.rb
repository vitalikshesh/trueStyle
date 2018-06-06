#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Outfit.delete_all
Outfit.create!(title: 'Окуляри сонцезахисні',
  description: 
    %{<p>
       Найдоречнійший аксесуар цієї пори
      </p>},
  image_url:   'im1.PNG',    
  price: 450)
# . . .
Outfit.create!(title: 'Круті джинси',
  description:
    %{<p>
        Хіба це не найкращі джинси які ти тільки бачив?І не дивно! 
        Такий красивий світлий колір джинсивої тканини важко відкопати
        </p>},
  image_url: 'im2.PNG',
  price: 995)
# . . .

Outfit.create!(title: 'Футболка ever',
  description: 
    %{<p>
        Білий колір переливається в чорний, з класним прінтом.
		Така футболка дуже круто дивиться з будь-якими шортами
      </p>},
  image_url: 'im3.PNG',
  price: 34.95)
