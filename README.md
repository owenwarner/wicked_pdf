# Wicked PDF

## A PDF generation plugin for Ruby on Rails

### Overview
This fork of the fantastic plugin by [Miles Z. Sterrett](https://github.com/mileszs) aims to provide as much fixed/added functionality as possible geared towards specifically [wkhtmltopdf](https://code.google.com/p/wkhtmltopdf/) 0.11.0 RC1 and above. While Miles' plugin works quite well for wkhtmltopdf 0.9.9, many changes to wkhtmltopdf have left gaps or areas of broken functionality.

A good deal of functionally correct documentation can be found in [Miles' README](https://github.com/mileszs/wicked_pdf/blob/master/README.md) to get you started down the correct path.

### Implementation Notes for >= 0.11.0 RC1
Below you will find an implementation I am currently using and can help you get started with your own  usage of this fork of Miles' Gem.

```ruby
format.pdf do
  render  :pdf                => "#{pdf_file_name}",
            :disposition      => 'attachment',
            :template         => 'document_versions/pdf-show.html.erb',
            :layout           => 'pdf.html.erb',
            :dpi              => 96,
            :javascript_delay => 1000,
            :page_size        => 'Letter',
            :cover            => "http://url.to/cover --exclude-from-outline",
            :toc              => "--xsl-style-sheet #{Rails.root}/app/assets/xsl/toc.xsl",
            :header           => { :html => { :template => 'document_version/header.html.erb' }, :spacing => 10 },
            :footer           => { :html => { :template => 'document_version/footer.html.erb' }, :spacing => 5 },
            :margin           => { :top => 25, :bottom => 20, :left => 9, :right => 12 },
            :wkhtmltopdf      => '/usr/local/bin/wkhtmltopdf'
end
```
Be sure to read the most up-to-date wkhtmltopdf manual, which, is currently [0.10.0 RC 2](http://madalgo.au.dk/~jakobt/wkhtmltoxdoc/wkhtmltopdf_0.10.0_rc2-doc.html).

## Versioning
I've gone ahead and made this Gem version to 1.0.x to keep it very separate from the mainline that Miles has at 0.8.0 currently. This has very little to do with progress of the Gem over Miles', except in terms of >= 0.11.0 RC1 support.
