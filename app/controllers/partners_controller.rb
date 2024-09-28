class PartnersController < ApplicationController
  def index
    # Mock data for partners categorized by section
    @partners = {
      "Toys & Games" => [
        { name: 'ToyClub', description: 'Rent high-quality toys for kids, from action figures to LEGO sets.' },
        { name: 'KidsPlay Rentals', description: 'Wide variety of educational toys and games delivered right to your door.' },
        { name: 'LEGO RentBox', description: 'Get creative with premium LEGO sets available for rent.' }
      ],
      "Educational Tools & Gadgets" => [
        { name: 'EduGear', description: 'Rent educational gadgets to enhance learning in STEM and more.' },
        { name: 'STEMRentals', description: 'Find coding kits, science tools, and more for interactive learning.' }
      ],
      "Electronics & Gadgets" => [
        { name: 'TechForTeens', description: 'Rent the latest gadgets like gaming consoles and cameras.' },
        { name: 'GameBox Rentals', description: 'Gaming consoles, games, and accessories available for rent.' }
      ],
      "Sports & Outdoor Equipment" => [
        { name: 'OutdoorGearNow', description: 'Rent sports equipment like bikes, scooters, and trampolines.' }
      ],
      "Fashion & Costumes" => [
        { name: 'CostumeCraze', description: 'A service that offers costumes for parties and events.' }
      ],
      "Books & Learning Resources" => [
        { name: 'BookBuddies', description: 'Rent books for kids, teens, and young adults.' }
      ],
      "Experiences" => [
        { name: 'ExperienceFun', description: 'Virtual reality and theme park experiences for kids.' }
      ],
      "Musical Instruments & Art Supplies" => [
        { name: 'TuneTime Rentals', description: 'Rent musical instruments like guitars and keyboards.' }
      ],
      "Science & Exploration Kits" => [
        { name: 'ExploreKits', description: 'STEM-focused science and exploration kits for young learners.' }
      ]
    }

    # Handle filtering by category
    if params[:category].present?
      @selected_category = params[:category]
      @filtered_partners = @partners[@selected_category] || []
    else
      @selected_category = nil
      @filtered_partners = @partners.values.flatten
    end
  end
end
