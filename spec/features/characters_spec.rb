require "spec_helper"

feature "Characters", signed_in: true do
  context "when the user has characters" do
    let(:other_user) { create :user }

    let!(:characters) { [create(:character, user: Current.user), create(:character, user: Current.user)] }
    let!(:other_user_characters) { [create(:character, user: other_user), create(:character, user: other_user)] }

    it "displays the existing characters of that user and a button to create a new character" do
      visit characters_path

      characters.each do |character|
        expect(page).to have_content(character.name)
      end

      other_user_characters.each do |character|
        expect(page).to_not have_content(character.name)
      end

      expect(page).to have_link(t('characters.index.new_character.title'), href: new_character_path)
    end
  end
end
