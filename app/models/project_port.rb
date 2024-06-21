class ProjectPort < ApplicationRecord
  has_many_attached :photos


  validates :name, presence: true
  validates :description, presence: true
  validates :collaborations, presence: true
  validates :department, presence: true
  validates :client, presence: true
  validates :sector, presence: true
  validates :delivery_method, presence: true
  validates :completion_date, presence: true
  validates :location, presence: true
  validates :market, presence: true


  SECTORS = [
    'Residential', 'Commercial', 'Institutional', 'Mixed-Use',
    'Industrial', 'Heavy Civil', 'Generation', 'Transmission', 'Distribution',
    'Renewable Energy', 'Electrical Infrastructure', 'Telecommunications',
    'High-Speed Rail', 'Urban Transit', 'Freight Rail', 'Commuter Rail',
    'Rail Infrastructure', 'Rail Electrification'
  ]

  DELIVERY_METHODS = [
    'Design-Bid-Build', 'Design-Build', 'Construction Management',
    'Integrated Project Delivery', 'Construction Management Multi-Prime',
    'Public-Private Partnerships'
  ]

  MARKETS = [
    'Residential Construction', 'Commercial Construction', 'Institutional Construction',
    'Mixed-Use Construction', 'Industrial Construction', 'Heavy Civil Construction',
    'Healthcare', 'Education', 'Hospitality', 'Retail', 'Transportation', 'Energy',
    'Oil and Gas', 'Telecommunications', 'Sports and Entertainment', 'Environmental',
    'Defense and Military'
  ]

  # enum department: {
  #   construction: 'Construction',
  #   electricity: 'Electricity',
  #   rail: 'Rail'
  # }

  DEPARTMENTS = [
    'Construction', 'Electricity', 'Rail'
  ]

  # enum sector: {
  #   residential: 'Residential',
  #   commercial: 'Commercial',
  #   institutional: 'Institutional',
  #   mixed_use: 'Mixed-Use',
  #   industrial: 'Industrial',
  #   heavy_civil: 'Heavy Civil',
  #   generation: 'Generation',
  #   transmission: 'Transmission',
  #   distribution: 'Distribution',
  #   renewable_energy: 'Renewable Energy',
  #   electrical_infrastructure: 'Electrical Infrastructure',
  #   telecommunications: 'Telecommunications',
  #   high_speed_rail: 'High-Speed Rail',
  #   urban_transit: 'Urban Transit',
  #   freight_rail: 'Freight Rail',
  #   commuter_rail: 'Commuter Rail',
  #   rail_infrastructure: 'Rail Infrastructure',
  #   rail_electrification: 'Rail Electrification'
  # }

  # enum delivery_method: {
  #   design_bid_build: 'Design-Bid-Build',
  #   design_build: 'Design-Build',
  #   construction_management: 'Construction Management',
  #   integrated_project_delivery: 'Integrated Project Delivery',
  #   construction_management_multi_prime: 'Construction Management Multi-Prime',
  #   public_private_partnerships: 'Public-Private Partnerships'
  # }

  # enum market: {
  #   residential_construction: 'Residential Construction',
  #   commercial_construction: 'Commercial Construction',
  #   institutional_construction: 'Institutional Construction',
  #   mixed_use_construction: 'Mixed-Use Construction',
  #   industrial_construction: 'Industrial Construction',
  #   heavy_civil_construction: 'Heavy Civil Construction',
  #   healthcare: 'Healthcare',
  #   education: 'Education',
  #   hospitality: 'Hospitality',
  #   retail: 'Retail',
  #   transportation: 'Transportation',
  #   energy: 'Energy',
  #   oil_and_gas: 'Oil and Gas',
  #   telecommunications: 'Telecommunications',
  #   sports_and_entertainment: 'Sports and Entertainment',
  #   environmental: 'Environmental',
  #   defense_and_military: 'Defense and Military'
  # }

end
