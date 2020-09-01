require "application_system_test_case"

class MovieSystemTest < ApplicationSystemTestCase
    test "visiting the show" do
        visit '/movies/1'
        assert_test 'Parasite'
        assert_test 'Bong Joon-ho'
    end
end