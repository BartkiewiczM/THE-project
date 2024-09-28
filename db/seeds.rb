# db/seeds.rb
UserPurchase.destroy_all
Product.destroy_all
Partner.destroy_all

# db/seeds.rb

# db/seeds.rb

# Create Partners
partners = Partner.create([
                            {
                              name: "Toy Galaxy",
                              description: "A leading store for children's toys and games.",
                              tag: "Toys & Games"
                            },
                            {
                              name: "EduKits",
                              description: "Providing innovative educational tools and gadgets.",
                              tag: "Educational Tools & Gadgets"
                            },
                            {
                              name: "Gizmo World",
                              description: "Your one-stop shop for the latest electronics and gadgets.",
                              tag: "Electronics & Gadgets"
                            },
                            {
                              name: "Outdoor Adventures",
                              description: "Quality sports equipment and outdoor gear.",
                              tag: "Sports & Outdoor Equipment"
                            },
                            {
                              name: "Fashion Fiesta",
                              description: "Trendy fashion items and creative costumes.",
                              tag: "Fashion & Costumes"
                            },
                            {
                              name: "Book Haven",
                              description: "A wide collection of books and learning resources.",
                              tag: "Books & Learning Resources"
                            },
                            {
                              name: "Experience Explorer",
                              description: "Crafting unforgettable experiences for adventurers.",
                              tag: "Experiences"
                            },
                            {
                              name: "Artistic Melody",
                              description: "Essential musical instruments and art supplies.",
                              tag: "Musical Instruments & Art Supplies"
                            },
                            {
                              name: "Science Safari",
                              description: "Exciting science and exploration kits for young minds.",
                              tag: "Science & Exploration Kits"
                            }
                          ])

# Create Products
products = [
  {
    partner: "Toy Galaxy",
    items: [
      {name: "Lego Star Wars", price: 59.99, description: "Build your own Star Wars universe with this Lego set.", tag: "Toys & Games"},
      {name: "RC Car", price: 29.99, description: "Remote controlled car for thrilling races.", tag: "Toys & Games"}
    ]
  },
  {
    partner: "EduKits",
    items: [
      {name: "Robotics Kit", price: 149.99, description: "Build and program your own robot.", tag: "Educational Tools & Gadgets"},
      {name: "Math Flash Cards", price: 9.99, description: "Enhance your math skills with these flash cards.", tag: "Educational Tools & Gadgets"}
    ]
  },
  {
    partner: "Gizmo World",
    items: [
      {name: "Smart Watch", price: 199.99, description: "Stay connected with this sleek smart watch.", tag: "Electronics & Gadgets"},
      {name: "Bluetooth Speaker", price: 49.99, description: "Enjoy your music with this portable Bluetooth speaker.", tag: "Electronics & Gadgets"}
    ]
  },
  {
    partner: "Outdoor Adventures",
    items: [
      {name: "Trekking Poles", price: 39.99, description: "Durable trekking poles for your hikes.", tag: "Sports & Outdoor Equipment"},
      {name: "Camping Tent", price: 99.99, description: "Stay comfortable on your camping trips with this tent.", tag: "Sports & Outdoor Equipment"}
    ]
  },
  {
    partner: "Fashion Fiesta",
    items: [
      {name: "Summer Dress", price: 49.99, description: "Stay stylish with this beautiful summer dress.", tag: "Fashion & Costumes"},
      {name: "Halloween Costume", price: 29.99, description: "Stand out this Halloween with this unique costume.", tag: "Fashion & Costumes"}
    ]
  },
  {
    partner: "Book Haven",
    items: [
      {name: "Science Encyclopedia", price: 39.99, description: "A comprehensive encyclopedia for young scientists.", tag: "Books & Learning Resources"},
      {name: "Fantasy Novel", price: 19.99, description: "Get lost in an exciting fantasy world with this novel.", tag: "Books & Learning Resources"}
    ]
  },
  {
    partner: "Experience Explorer",
    items: [
      {name: "Skydiving Experience", price: 299.99, description: "Feel the thrill of skydiving with our expert instructors.", tag: "Experiences"},
      {name: "Cooking Class", price: 89.99, description: "Learn to cook gourmet meals with our top chefs.", tag: "Experiences"}
    ]
  },
  {
    partner: "Artistic Melody",
    items: [
      {name: "Acoustic Guitar", price: 199.99, description: "Perfect for aspiring musicians.", tag: "Musical Instruments & Art Supplies"},
      {name: "Watercolor Set", price: 29.99, description: "Create beautiful paintings with this complete watercolor set.", tag: "Musical Instruments & Art Supplies"}
    ]
  },
  {
    partner: "Science Safari",
    items: [
      {name: "Microscope Kit", price: 69.99, description: "Explore the microscopic world with this microscope kit.", tag: "Science & Exploration Kits"},
      {name: "Chemical Experiment Set", price: 49.99, description: "Conduct fun and educational experiments with this set.", tag: "Science & Exploration Kits"}
    ]
  }
]

# Associate Products with Partners
products.each do |product_data|
  partner = Partner.find_by(name: product_data[:partner])
  product_data[:items].each do |item|
    Product.create(item.merge(partner_id: partner.id))
  end
end

User.create(name: "John", surname: "Doe", used_funds: 0, total_funds: 500, id: 1)

UserPurchase.create([
                      {user_id: 1, product_id: Product.first.id},
                      {user_id: 1, product_id: Product.second.id},
                      {user_id: 1, product_id: Product.third.id},
                      {user_id: 1, product_id: Product.fourth.id}
])
