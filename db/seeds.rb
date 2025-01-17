AmusementPark.destroy_all
Ride.destroy_all
Mechanic.destroy_all
MechanicsRide.destroy_all

six_flags = AmusementPark.create!(name: 'Six Flags', admission_cost: 75)
universal = AmusementPark.create!(name: 'Universal Studios', admission_cost: 80)

hurler = six_flags.rides.create!(name: 'The Hurler', thrill_rating: 7, open: true)
scrambler = six_flags.rides.create!(name: 'The Scrambler', thrill_rating: 4, open: true)
ferris_wheel = six_flags.rides.create!(name: 'Ferris Wheel', thrill_rating: 7, open: false)

jaws = universal.rides.create!(name: 'Jaws', thrill_rating: 5, open: true)

zel = Mechanic.create!(name: "Zel Imbriaco", years_experience: 5)
noah = Mechanic.create!(name: "Noah Imbriaco", years_experience: 3)

zel_1 = MechanicsRide.create!(mechanic_id: zel.id, ride_id: hurler.id)
zel_2 = MechanicsRide.create!(mechanic_id: zel.id, ride_id: ferris_wheel.id)
zel_3 = MechanicsRide.create!(mechanic_id: zel.id, ride_id: scrambler.id)

noah_1 = MechanicsRide.create!(mechanic_id: noah.id, ride_id: jaws.id)
noah_2 = MechanicsRide.create!(mechanic_id: noah.id, ride_id: hurler.id)