# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(csv_emails)
    @emails = csv_emails
  end

  # def parse
  #   info = emails.split(/[\s,]+/)
  #   info.uniq
  # end
  def parse
    email_array = []
    # email_array << @emails.split(/[,\s]/)
    # email_array.flatten
    # email_array.delete("")
    # return email_array
    email_array = @emails.split(/[,\s]+/)
    #email_array = email_array.reject {|email| email == ""}
    email_array.uniq
  end
end
