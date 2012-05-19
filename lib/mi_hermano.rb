require "mi_hermano/version"
require "google_spreadsheet"

class MiHermano
  def self.setup(attrs)
    @@default = new(attrs)
  end

  def self.translate(text, source=nil, target=nil)
    @@default.translate(text, source, target)
  end

  def initialize(attrs)
    @spreadsheet_key = attrs[:spreadsheet_key]
    @username = attrs[:username]
    @password = attrs[:password]
    @default_source = attrs[:default_source] || :en
    @default_target = attrs[:default_target] || :fr

    @session = GoogleSpreadsheet.login(@username, @password)
    @worksheet = @session.spreadsheet_by_key(@spreadsheet_key).worksheets[0]
  end

  def translate(text, source=nil, target=nil)
    source ||= @default_source
    target ||= @default_target

    @worksheet[1, 1] = '=GoogleTranslate("'+text+'"; "'+source.to_s+'"; "'+target.to_s+'")'
    @worksheet.save
    @worksheet.reload
    @worksheet[1, 1]
  end
end
