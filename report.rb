require "prawn"

class Report

    def initialize(country)
      @country = country
    end

    def run
      Prawn::Document.generate("country_report.pdf") do |pdf|
        pdf.text @country.name
        pdf.move_down 20
        pdf.text "Currency: #{@country.currency.name}"
      end
    end

end
