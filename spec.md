# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - kim: item has many personal items, users has many personal items
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - kim: personal items belongs to users, personal items belongs to items
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - items has many users through personal items, users has many items through personal items
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - items has many users through personal items, users has many items through personal items
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - personal items has additional attributes such as note, status
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - username, associated, pasword, presence validations
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - personal item has two class level scope methods last_updated and last_acquired
- [x] Include signup (how e.g. Devise) - done routes.rb /signup
- [x] Include login (how e.g. Devise) - done routes.rb /login
- [x] Include logout (how e.g. Devise) - done routes.rb /logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - done mainly sessions_controller.rb, user.rb
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - done routes.rb /users/1/personal_items/show,  /users/1/personal_items
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - done routes.rb  /users/1/personal_items/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - done users/new.html.erb @user.errors.any? flash in application.html.erb

Confirm:
- [x] The application is pretty DRY - kim: sure. used helpers, in application_controller
- [x] Limited logic in controllers - kim: tried to keep it simple, used helpers
- [x] Views use helper methods if appropriate - kim: url helpers and form helpers were indeed used
- [x] Views use partials if appropriate - kim: used in personal_item and user views to reuse templates. e.g. personal_item reused for edit and new forms
