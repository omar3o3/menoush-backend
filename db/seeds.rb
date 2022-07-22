puts '-------------SEEDING HAS FINISHED-------------'

# users with false admin
User.create!(
    username: "ramo3o3",
    first_name: "Ramo",
    last_name: "Tantawy",
    email: "ramo@gmail.com",
    admin: false,
    password: "mypassword",
    password_confirmation: "mypassword"
)

# users with true admin
User.create!(
    username: "omar3o3",
    first_name: "Omar",
    last_name: "Tantawy",
    email: "omar@gmail.com",
    admin: true,
    password: "mypassword",
    password_confirmation: "mypassword"
)


# kunafa
Dessert.create!(
    english_name: "kunafa platter with mango",
    arabic_name: "صنيه كنافة بالمانجو",
    dessert_type: "kunafa",
    price: 45,
)

Dessert.create!(
    english_name: "kunafa platter with qishda",
    arabic_name: "صنيه كنافة بالقشدة",
    dessert_type: "kunafa",
    price: 35,
)

# cookies
Dessert.create!(
    english_name: "plain kahk",
    arabic_name: "كحك سادة",
    dessert_type: "cookie",
    price: 18,
)

Dessert.create!(
    english_name: "ajwa kahk",
    arabic_name: "كحك سادة",
    dessert_type: "cookie",
    price: 20,
)

# Qatayef
Dessert.create!(
    english_name: "stuffed Qatayef with nuts (fried)",
    arabic_name: "قطايف محشيه مكسرات و محمرة",
    dessert_type: "qatayef",
    price: 25,
)

Dessert.create!(
    english_name: "stuffed Qatayef with pistachios, qishda and syrup (not fried)",
    arabic_name: "قطايف محشيه مكسرات و محمرة",
    dessert_type: "qatayef",
    price: 30,
)

# platters
Dessert.create!(
    english_name: "large mix platter",
    arabic_name: "طبق كبير مشكل",
    dessert_type: "platters",
    price: 85,
)

Dessert.create!(
    english_name: "large baklava full sheet",
    arabic_name: "صنيه بقلاوة كبيرة",
    dessert_type: "platters",
    price: 60,
)

# cakes
Dessert.create!(
    english_name: "medium cake topped with various fruits",
    arabic_name: "كيك بالفاكهة وسط",
    dessert_type: "cakes",
    price: 45,
)

Dessert.create!(
    english_name: "Trilecha cake",
    arabic_name: "كيك التريليتشا (كيك بالحليب و الكريمة مع كراميل علي الوجه)",
    dessert_type: "cakes",
    price: 45,
)

puts '-------------SEEDING HAS FINISHED-------------'