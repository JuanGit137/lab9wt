users_data = [
  { email: "john.doe@example.com", first_name: "John", last_name: "Doe", created_at: Time.now, updated_at: Time.now },
  { email: "jane.smith@example.com", first_name: "Jane", last_name: "Smith", created_at: Time.now, updated_at: Time.now },
  { email: "alice.jones@example.com", first_name: "Alice", last_name: "Jones", created_at: Time.now, updated_at: Time.now },
  { email: "michael.brown@example.com", first_name: "Michael", last_name: "Brown", created_at: Time.now, updated_at: Time.now },
  { email: "emily.davis@example.com", first_name: "Emily", last_name: "Davis", created_at: Time.now, updated_at: Time.now },
  { email: "david.wilson@example.com", first_name: "David", last_name: "Wilson", created_at: Time.now, updated_at: Time.now },
  { email: "sarah.moore@example.com", first_name: "Sarah", last_name: "Moore", created_at: Time.now, updated_at: Time.now },
  { email: "chris.taylor@example.com", first_name: "Chris", last_name: "Taylor", created_at: Time.now, updated_at: Time.now },
  { email: "laura.anderson@example.com", first_name: "Laura", last_name: "Anderson", created_at: Time.now, updated_at: Time.now },
  { email: "daniel.thomas@example.com", first_name: "Daniel", last_name: "Thomas", created_at: Time.now, updated_at: Time.now }
]

users = []
users_data.each do |user_data|
  users << User.create!(user_data)
end

chats_data = [
  { sender_id: users[0].id, receiver_id: users[1].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[1].id, receiver_id: users[2].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[2].id, receiver_id: users[3].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[3].id, receiver_id: users[4].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[4].id, receiver_id: users[5].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[5].id, receiver_id: users[6].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[6].id, receiver_id: users[7].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[7].id, receiver_id: users[8].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[8].id, receiver_id: users[9].id, created_at: Time.now, updated_at: Time.now },
  { sender_id: users[9].id, receiver_id: users[0].id, created_at: Time.now, updated_at: Time.now }
]

chats_data.each do |chat_data|
  Chat.create!(chat_data)
end

messages_data = [
  { chat_id: 1, user_id: users[0].id, body: "Hello, how are you?", created_at: Time.now, updated_at: Time.now },
  { chat_id: 1, user_id: users[1].id, body: "I'm good, thanks! How about you?", created_at: Time.now, updated_at: Time.now },
  { chat_id: 2, user_id: users[1].id, body: "Hi Alice, long time no see!", created_at: Time.now, updated_at: Time.now },
  { chat_id: 2, user_id: users[2].id, body: "Hey Jane! It's been a while indeed.", created_at: Time.now, updated_at: Time.now },
  { chat_id: 3, user_id: users[2].id, body: "Michael, how's work?", created_at: Time.now, updated_at: Time.now },
  { chat_id: 3, user_id: users[3].id, body: "Busy as always, Alice!", created_at: Time.now, updated_at: Time.now },
  { chat_id: 4, user_id: users[3].id, body: "Emily, are you free this weekend?", created_at: Time.now, updated_at: Time.now },
  { chat_id: 4, user_id: users[4].id, body: "Yes, let's catch up!", created_at: Time.now, updated_at: Time.now },
  { chat_id: 5, user_id: users[4].id, body: "David, did you finish the report?", created_at: Time.now, updated_at: Time.now },
  { chat_id: 5, user_id: users[5].id, body: "Almost done, Emily.", created_at: Time.now, updated_at: Time.now }
]

messages_data.each do |message_data|
  Message.create!(message_data)
end

