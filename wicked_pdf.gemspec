Gem::Specification.new do |s|
  s.name              = "wicked_pdf"
  s.version           = "1.0.1"
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "PDF generator (from HTML) plugin for Ruby on Rails"
  s.homepage          = "https://github.com/mstanislav/wicked_pdf"
  s.email             = "mark.stanislav@gmail.com"
  s.authors           = [ "Miles Z. Sterret", "Mark Stanislav" ]

  s.files             = %w( README.md Rakefile MIT-LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")

  s.add_dependency('rails')
  s.add_development_dependency('rake')

  s.description       = <<desc
Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML.
In other words, rather than dealing with a PDF generation DSL of some sort,
you simply write an HTML view as you would normally, and let Wicked take care of the hard stuff.

This gem specifically focuses on 0.11.0 RC1 and beyond of wkhtmltopdf support.
desc
end
