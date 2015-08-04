# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

require 'pry'

class EmailParser
  attr_accessor :emails
  

  def initialize(emails)
    @emails = emails
    # emails.split(/[' '|\,]+/).each do |email|
    #   @email = email
    #   EMAILS << email unless EMAILS.include?(email)
    # end
  end


  def parse
  #   emails_list = []
  #   @emails.split(/[' '|\,]+/).each do |email|
  #     emails_list << email unless emails_list.include?(email)
  #   end
  #   emails_list
  # end
  @emails.split(/[' '|\,]+/).each_with_object([]) do |email, emails_list|
      emails_list << email unless emails_list.include?(email)
    end
  end
  
end
