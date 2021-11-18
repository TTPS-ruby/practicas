def coin_toss
  rand(1..100) < 50
end

Event.destroy_all
EventType.destroy_all

event_types = EventType.create([
                                 { name: 'Cumpleaños' },
                                 { name: 'Casamiento' },
                                 { name: 'Divorcio' }
                               ])

rand(10..50).times do
  event_type = event_types.sample

  event = Event.create(
    event_type: event_type,
    name: "#{event_type.name} de #{rand(1..1000)}",
    date: rand(1..300).days.from_now + rand(1..500).minutes
  )

  rand(10..300).times do |i|
    event.people.create(first_name: "First name #{i}", last_name: "Last name #{i}", confirmed: coin_toss)
  end
end
