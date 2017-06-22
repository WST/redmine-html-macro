
require 'redmine'
require 'open-uri'

Redmine::Plugin.register :redmine_html_macro do
	name 'Redmine HTML macro'
	author 'Ilya Averkov'
	author_url 'https://github.com/WST/redmine-html-macro'
	description 'A simple plugin allowing to use HTML blocks in the wiki pages'
	version '0.0.1'

	Redmine::WikiFormatting::Macros.register do
		desc "Embed raw html\nUsage:\n<pre>{{html\nHTML CODE\n}}</pre>"
		macro :html do |obj, args, text|
			return text.html_safe
		end 
	end  
end
