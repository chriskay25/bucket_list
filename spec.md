# Specifications for the Sinatra Assessment

Specs:
- [X] Use Sinatra to build the app - Self explanatory.
- [X] Use ActiveRecord for storing information in a database - Self explanatory.
- [X] Include more than one model class (e.g. User, Post, Category) - User, Destination, Experience models.
- [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has many destinations, user has many experiences.
- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Destinations and experiences belong to user.
- [X] Include user accounts with unique login attribute (username or email) - Username has uniqueness validation.
- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Destinations and experiences have these routes.
- [X] Ensure that users can't modify content created by other users - Authorizations are included in controller routes to restrict access and modification to unauthorized users.
- [X] Include user input validations - There is at least one validation in place per model.
- [X] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - Error messages from validation failures are displayed when creating new models.
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code - Everything listed is included.

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message