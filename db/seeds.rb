# Product.create(title: "商品1", product_old_id: "1",deliveryfee_id: "1",area_id: "1",shipment_id: "1",price: "100",product_introduce: "猫ちゃん",product_state_id: "1",user_id: "1",brand_id: "1",size_id: "1",category_id: "1",deliveryday_id: "1",)

# Area.create(name: "北海道")

# BirthDay.create(name: "29")

# BirthMonth.create(name: "11")

# BirthYear.create(name: "1993")

# Brand.create(name: "猫ちゃん")

# Buy.create(product_id: "1", user_id: "1")

# Category.create(name: "動物")

# Deliveryday.create(name: "2~3日で配送")

# Deliveryfee.create(name: "出品者が負担")

# Favorite.create(product_id: "1", user_id: "1")

# Image.create(image_url: "https://grapee.jp/wp-content/uploads/32187_main2.jpg", product_id: "1")

# ProductOld.create(name: "新品")

# ProductState.create(name: "出品中")

# Shipment.create(name: "郵送")

# Size.create(name: "S")

# User.create(name: "1")

# UserAddress.create(postal_code: "0000000", area_id: "1",city_name: "横浜市", city_number: "111",building: "111",)

  require 'csv'

  csv_data = CSV.read('db/csv/categories.csv', headers: true)
  csv_data.each do |data|
    Category.create(data.to_hash)
  end

    csv_data = CSV.read('db/csv/size_table.csv', headers: true)
  csv_data.each do |data|
    Size.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/prefectures.csv', headers: true)
  csv_data.each do |data|
    Area.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/birth_years.csv', headers: true)
  csv_data.each do |data|
    BirthYear.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/birth_months.csv', headers: true)
  csv_data.each do |data|
    BirthMonth.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/birth_days.csv', headers: true)
  csv_data.each do |data|
    BirthDay.create(data.to_hash)
  end


  csv_data = CSV.read('db/csv/brand.csv', headers: true)
  csv_data.each do |data|
    Brand.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/deliverydays.csv', headers: true)
  csv_data.each do |data|
    Deliveryday.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/deliveryfee.csv', headers: true)
  csv_data.each do |data|
    Deliveryfee.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/productsold.csv', headers: true)
  csv_data.each do |data|
    ProductOld.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/productstatus.csv', headers: true)
  csv_data.each do |data|
    ProductState.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/shipment.csv', headers: true)
  csv_data.each do |data|
    Shipment.create(data.to_hash)
  end

  csv_data = CSV.read('db/csv/image.csv', headers: true)
  csv_data.each do |data|
    Image.create(data.to_hash)
  end
