control 'check_website' do

  describe http('https://github.com/DarkMagics/example-kitchen') do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome ghrepo' }
  end

end
