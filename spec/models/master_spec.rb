require 'rails_helper'

RSpec.describe Master, type: :model do
  context "creation" do
    let(:master) { Master.new(name: "John", surname: "Johnson", about_me: "A true professional") }

    it "creates valid master" do
      expect(master).to be_valid
    end

    context "name testing" do
      it "doesnt create master without a name" do
        master.name = ""
        expect(master).not_to be_valid
      end
      it "creates master only with name less than 32 chars" do
        str_with_length_of_32 = "HPoOGsUdwFDafvcmtuQrNBXuBIFJJBnv"

        master.name = str_with_length_of_32
        expect(master).to be_valid

        master.name += 'a'
        expect(master).not_to be_valid
      end
    end

    context "surname testing" do
      it "doesnt create master without a surname" do
        master.surname = ""
        expect(master).not_to be_valid
      end
      it "creates master only with surname less than 32 chars" do
        str_with_length_of_32 = "HPoOGsUdwFDafvcmtuQrNBXuBIFJJBnv"

        master.surname = str_with_length_of_32
        expect(master).to be_valid

        master.surname += 'a'
        expect(master).not_to be_valid
      end
    end

    context "about_me testing" do
      it "creates master only with 'about_me' less than 512 chars" do
        master.about_me = 'a' * 512
        expect(master).to be_valid

        master.about_me += 'a'
        expect(master).not_to be_valid
      end
    end
  end
end
