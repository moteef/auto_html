require 'action_controller'
require 'cgi'

AutoHtml.add_filter(:sanitize).with({}) do |text, options|
  if Rails::VERSION::MAJOR == 4 and Rails::VERSION::MINOR >= 2
    # Rails >=4.2
    Rails::Html::WhiteListSanitizer.new.sanitize(text, options)
  else
    # Rails <4.2
    HTML::WhiteListSanitizer.new.sanitize(text, options)
  end
end