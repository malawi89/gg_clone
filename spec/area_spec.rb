require 'activerecord'
require_relative "../app/models/application_record"
require_relative "../app/models/area"

describe Area do
  describe "#name" do
    it "returns 'Wandsworth'" do
     area = Area.new(name: "Wandsworth")

      actual = area.name
      expected = "John Lennon"

      expect(actual).to eq(expected)
    end
  end
end
