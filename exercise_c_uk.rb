united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1] [:capital] = ("Cardiff")
p united_kingdom[1] [:capital]
# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
ni =
  {
    name: "Northern Ireland",
    population: 1811000,
    capital: "Belfast"
  }


united_kingdom.append(ni)
p united_kingdom
# 3. Use a loop to print the names of all the countries in the UK.
for country_list in united_kingdom
  p "#{country_list[:name]}"
end
# 4. Use a loop to find the total population of the UK.

total_uk_pop = 0

for country in united_kingdom
  total_uk_pop += country[:population]
  country[:population] = 0
end

p total_uk_pop.to_s() + " people in the United Kingdom"
