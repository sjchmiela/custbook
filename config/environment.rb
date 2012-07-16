# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Custbook::Application.initialize!

Time::DATE_FORMATS[:polish] = "%d-%m-%y"
Time::DATE_FORMATS[:default]='%d-%m-%y'