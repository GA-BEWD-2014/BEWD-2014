![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)

#Stuff Finder

Visit [Stuff Finder](http://gentle-temple-9238.herokuapp.com/) online. 

During this lesson we will build, style and push Stuff Finder to Heroku (yes your mom can use Stuff Finder when she visits your link).
 
####App Description

Stuff Finder is an online classifieds application. Users can post classifieds they have for sale/rent, and view posted classifieds from other users (think craigslist).


##Build
####Time: 60 min

###Task Instructions

Work in pairs to build your own Stuff Finder. 

Below are some hints to help you build the application.

__schema.rb snippets__

```ruby
	create_table "categories", force: true do |t|
		t.string   "name"
		t.datetime "created_at"
		t.datetime "updated_at"
	end
```
```ruby
	create_table "classifieds", force: true do |t|
    		t.string   "title"
    		t.string   "description"
    		t.decimal  "price"
    		t.datetime "created_at"
    		t.datetime "updated_at"
    		t.integer  "category_id"
    		t.integer  "user_id"
    	end
```
```ruby
	create_table "users", force: true do |t|
		t.string   "email",               default: "", null: false
		t.string   "encrypted_password",  default: "", null: false
		t.datetime "remember_created_at"
		t.datetime "created_at"
		t.datetime "updated_at"
	end
```

__Views__

![Stuff Finder Views](../../assets/rails/stuff_finder_views.png)


*	categories/show.html.erb lists all classifieds associated to a specific category.

*	classifieds/new.html.erb allows authenticated users to post a new classified.

*	classifieds/show.html.erb displays the title, price, description and category for a specific classified. In addition users can click contact seller to email users.

*	welcome/index.html.erb lists all categories in the database. 
	*	Bonus: In addition to listing all categories, list the 5 most recent classifieds for each category.


##Lab Time - Style & Push Changes
####Time: 60 min
###Task Instructions

*	Experiement with Twitter Bootstrap and style the front-end of your Stuff Finder app, then push the changes to Herkou.



