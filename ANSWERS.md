# Q0: Why is this error being thrown?

Pokemon model doesn't exist yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

All pokemon start with "a wild pokemon appeared." They were generated in the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button with the given text. It also takes in the captured pokemon's id so the database can be updated.

# Question 3: What would you name your own Pokemon?

bob

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

WE pass damage_path(id: pokemon). Damage_path helper will create path. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This will render messages.html.erb due to applications.html.erb.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
