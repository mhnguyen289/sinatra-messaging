User.create(username: "mrtennis209", email: 'mrtennis209@gmail.com', password_digest: "minh8989")
User.create(username: "IamWonderBoy", email: 'wonderboy@gmail.com', password_digest: "minh8989")
User.create(username: "conor_mcgregor", email: 'conor_mcgregor@gmail.com', password_digest: "minh8989")
User.create(username: "eddie_alveraez", email: 'e_alveraz@gmail.com', password_digest: "minh8989")
User.create(username: "meisha_tate", email:'m_tate@gmail.com', password_digest: "minh8989")

Channel.create(title: "fight card for today")
Channel.create(title: "Simple Programming")
Channel.create(title: "MLB Postseason")

Message.create(content: "Conor Mcgregor is the best Figher ever!", user_id: 3, channel_id: 1, username: 'conor_mcgregor')
Message.create(content: "I will teach you how to program simply in one day!", user_id: 4, channel_id: 2, username: 'eddie_alveraez')
Message.create(content: "I KNOW the SF Giants will win the World Series this year!", user_id: 5, channel_id: 3, username: 'meisha_tate')