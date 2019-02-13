require 'mysql2'

client = Mysql2::Client.new(host: 'localhost', username: 'root',
                            database: 'old_fnvolga')
client.query('SELECT * FROM Articles limit 1').each do |row|
  puts row['Title']
  puts row['Subtitle']
  puts row['Text']
end
