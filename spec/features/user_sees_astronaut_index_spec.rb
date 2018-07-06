require 'rails_helper'
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

    it 'displays average age of all astronauts' do
      astronaut_1 = Astronaut.create!(name: 'Buzz Aldrin', age: '39', job: 'Pilot')
      astronaut_2 = Astronaut.create!(name: 'Neil Armstrong', age: '37', job: 'Commander')

      visit '/astronauts'

      expect(page).to have_content("Average Age: 38")
    end

    xit 'displays alphabetized list of missions for each astronaut' do
      astronaut_1 = Astronaut.create!(name: 'Buzz Aldrin', age: '39', job: 'Pilot')
      astronaut_2 = Astronaut.create!(name: 'Neil Armstrong', age: '37', job: 'Commander')

      space_mission_1 = astronaut_1.space_missions.create!(title: 'Apollo 13')
      space_mission_2 = astronaut_1.space_missions.create!(title: 'Capricorn 4')
      space_mission_3 = astronaut_2.space_missions.create!(title: 'Apollo 13')
      space_mission_4 = astronaut_2.space_missions.create!(title: 'Gemini 7')

      visit '/astronauts'

      expect(page).to have_content("Space Missions: #{astronaut_1.space_missions}")
      expect(page).to have_content("Space Missions: #{astronaut_2.space_missions}")
    end

    xit 'displays total time in space for each astronaut' do
      astronaut_1 = Astronaut.create!(name: 'Buzz Aldrin', age: '39', job: 'Pilot')
      astronaut_2 = Astronaut.create!(name: 'Neil Armstrong', age: '37', job: 'Commander')

      space_mission_1 = astronaut_1.space_missions.create!(title: 'Apollo 13')
      space_mission_2 = astronaut_1.space_missions.create!(title: 'Capricorn 4')
      space_mission_3 = astronaut_2.space_missions.create!(title: 'Apollo 13')
      space_mission_4 = astronaut_2.space_missions.create!(title: 'Gemini 7')

      visit '/astronauts'

      expect(page).to have_content("Total Time in Space: #{astronaut_1.trip_length}")
      expect(page).to have_content("Total Time in Space: #{astronaut_2.trip_length}")
    end
  end
end
