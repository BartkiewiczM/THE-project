# db/seeds.rb
UserPurchase.destroy_all
Product.destroy_all
Partner.destroy_all
User.destroy_all

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
      {name: "Lego Star Wars", price: 59.99, description: "Build your own Star Wars universe with this Lego set.", tag: "Toys & Games", image_url: "https://unsplash.com/photos/DGve0JRt12c/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8NXx8bGVnbyUyMHN0YXIlMjB3YXJzfGVufDB8fHx8MTcyNzUxMzU1Mnww&force=true&w=640"},
      {name: "RC Car", price: 29.99, description: "Remote controlled car for thrilling races.", tag: "Toys & Games", image_url: "https://unsplash.com/photos/JCio3nqgm9g/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8NHx8UkMlMjBDYXJ8ZW58MHx8fHwxNzI3NTUwNTk2fDA&force=true&w=640"}
    ]
  },
  {
    partner: "EduKits",
    items: [
      {name: "Robotics Kit", price: 149.99, description: "Build and program your own robot.", tag: "Educational Tools & Gadgets", image_url: "https://unsplash.com/photos/-_QpJv4J_AA/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8NHx8Um9ib3RpY3MlMjBLaXR8ZW58MHx8fHwxNzI3NTUwNjE3fDA&force=true&w=640"},
      {name: "Math Flash Cards", price: 9.99, description: "Enhance your math skills with these flash cards.", tag: "Educational Tools & Gadgets", image_url: "https://unsplash.com/photos/rD2dc_2S3i0/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8OHx8TWF0aCUyMEZsYXNoJTIwQ2FyZHN8ZW58MHx8fHwxNzI3NTUwNjUwfDA&force=true&w=640"}
    ]
  },
  {
    partner: "Gizmo World",
    items: [
      {name: "Smart Watch", price: 199.99, description: "Stay connected with this sleek smart watch.", tag: "Electronics & Gadgets", image_url: "https://unsplash.com/photos/nmhZgiSU8_0/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8U21hcnQlMjBXYXRjaHxlbnwwfHx8fDE3Mjc1NTA2ODF8MA&force=true&w=640"},
      {name: "Bluetooth Speaker", price: 49.99, description: "Enjoy your music with this portable Bluetooth speaker.", tag: "Electronics & Gadgets", image_url: "https://unsplash.com/photos/AuYxxE0UvlM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTV8fEJsdWV0b290aCUyMFNwZWFrZXJ8ZW58MHx8fHwxNzI3NTUwNzA3fDA&force=true&w=640"}
    ]
  },
  {
    partner: "Outdoor Adventures",
    items: [
      {name: "Trekking Poles", price: 39.99, description: "Durable trekking poles for your hikes.", tag: "Sports & Outdoor Equipment", image_url: "https://unsplash.com/photos/zW8NsaUruMU/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Nnx8VHJla2tpbmclMjBQb2xlc3xlbnwwfHx8fDE3Mjc1NTU5MjR8MA&force=true&w=640"},
      {name: "Camping Tent", price: 99.99, description: "Stay comfortable on your camping trips with this tent.", tag: "Sports & Outdoor Equipment", image_url: "https://unsplash.com/photos/750S3VOelxg/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8Q2FtcGluZyUyMFRlbnR8ZW58MHx8fHwxNzI3NTU1OTgxfDA&force=true&w=640"}
    ]
  },
  {
    partner: "Fashion Fiesta",
    items: [
      {name: "Summer Dress", price: 49.99, description: "Stay stylish with this beautiful summer dress.", tag: "Fashion & Costumes", image_url: "https://unsplash.com/photos/p9Ekz8XckR0/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8U3VtbWVyJTIwRHJlc3N8ZW58MHx8fHwxNzI3NTU2MDE1fDA&force=true&w=640"},
      {name: "Halloween Costume", price: 29.99, description: "Stand out this Halloween with this unique costume.", tag: "Fashion & Costumes", image_url: "https://unsplash.com/photos/XUbBv6vOMak/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8N3x8SGFsbG93ZWVuJTIwQ29zdHVtZXxlbnwwfHx8fDE3Mjc1NTYwNjB8MA&force=true&w=640"}
    ]
  },
  {
    partner: "Book Haven",
    items: [
      {name: "Science Encyclopedia", price: 6.99, description: "A comprehensive encyclopedia for young scientists.", tag: "Books & Learning Resources", image_url: "https://unsplash.com/photos/zvKx6ixUhWQ/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8NXx8U2NpZW5jZSUyMEVuY3ljbG9wZWRpYSUyMGJvb2t8ZW58MHx8fHwxNzI3NTU2MTA3fDA&force=true&w=640"},
      {name: "Fantasy Novel", price: 4.99, description: "Get lost in an exciting fantasy world with this novel.", tag: "Books & Learning Resources", image_url: "https://unsplash.com/photos/SmCkmNjqrjI/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fEZhbnRhc3klMjBOb3ZlbHxlbnwwfHx8fDE3Mjc1NTYxMjl8MA&force=true&w=640"}
    ]
  },
  {
    partner: "Artistic Melody",
    items: [
      {name: "Acoustic Guitar", price: 199.99, description: "Perfect for aspiring musicians.", tag: "Musical Instruments & Art Supplies", image_url: "https://unsplash.com/photos/bwdRPDr-aHU/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8QWNvdXN0aWMlMjBHdWl0YXJ8ZW58MHx8fHwxNzI3NTU2MTk5fDA&force=true&w=640"},
      {name: "Watercolor Set", price: 29.99, description: "Create beautiful paintings with this complete watercolor set.", tag: "Musical Instruments & Art Supplies", image_url: "https://unsplash.com/photos/TTwwVG4Isjw/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8OHx8V2F0ZXJjb2xvciUyMHBhaW50cyUyMFNldHxlbnwwfHx8fDE3Mjc1NTYyNDN8MA&force=true&w=640"}
    ]
  },
  {
    partner: "Science Safari",
    items: [
      {name: "Microscope Kit", price: 69.99, description: "Explore the microscopic world with this microscope kit.", tag: "Science & Exploration Kits", image_url: "https://unsplash.com/photos/JdtUKqGdqw8/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fFNjaWVuY2UlMjBFbmN5Y2xvcGVkaWF8ZW58MHx8fHwxNzI3NTU2MDg4fDA&force=true&w=640"},
      {name: "Chemical Experiment Set", price: 49.99, description: "Conduct fun and educational experiments with this set.", tag: "Science & Exploration Kits", image_url: "https://unsplash.com/photos/UmncJq4KPcA/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8NXx8U2NpZW5jZSUyMEVuY3ljbG9wZWRpYXxlbnwwfHx8fDE3Mjc1NTYwODh8MA&force=true&w=640"}
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
