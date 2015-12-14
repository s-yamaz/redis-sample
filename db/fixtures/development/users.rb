User.seed do |s|
  s.id = 1
  s.password = '1qaz2wsx'
end

Profile.seed do |s|
  s.name = 'Test User'
  s.email = 'test@example.com'
end
