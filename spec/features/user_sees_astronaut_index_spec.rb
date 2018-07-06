describe 'user sees all astronauts' do
  describe 'they visit /astronauts' do

    it 'displays all astronauts' do
      astronaut_1 = Astronaut.create!(name: 'Buzz Aldrin', age: '39', job: 'Pilot')
      astronaut_2 = Astronaut.create!(name: 'Neil Armstrong', age: '37', job: 'Commander')

      visit '/astronauts'

      expect(page).to have_content(astronaut_1.name)
      expect(page).to have_content("Age: #{astronaut_1.age}")
      expect(page).to have_content(astronaut_2.job)
    end
  end
end


=begin
```
As a visitor,
When I visit '/astronauts'
I see a list of astronauts with the following info:
 - Name
 - Age
 - Job
 (e.g. "Name: Neil Armstrong" Age: 37 Job: Commander")
```

```
As a visitor,
When I visit '/astronauts'
I see the average age of all astronauts.
(e.g. "Average Age: 34")
```

```
As a visitor,
When I visit '/astronauts'
I see a list of the space missions' in alphabetical order for each astronaut.
(e.g "Apollo 13"
     "Capricorn 4"
     "Gemini 7")
```

```
As a visitor,
When I visit '/astronauts'
I see the total time in space for each astronaut.
(e.g. "Total Time in Space: 760 days")
```
=end
