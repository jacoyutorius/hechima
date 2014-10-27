# Hechima

## What is this?

Hechima can show View without Controller in Rails.
If you works with designer and developing Rails apps.
They don't want to touch "Black window". 
or Simply want to show HTML that was made ​​in the mock-up in your apps.



## Usage

Add "Hechima.load self" to "routes.rb"

```
Rails.application.routes.draw do
  Hechima.load self
end
```

make view file.

```
touch app/views/about.html.erb
#=> localhost:3000/about
```

It can show nested directory

```
mkdir app/views/company
touch app/views/company/about.html.erb
#=> localhost:3000/company/about/

mkdir app/views/company/contact
touch app/views/company/contact/help.html.erb
#=> localhost:3000/company/contact/help/
```

Only if filename is "index.html.erb", the url makes like this. 

```
mkdir app/views/contact
touch app/views/contact/index.html.erb
#=> localhost:3000/contact
```



## License
This project rocks and uses MIT-LICENSE.

## Author
* [Yuto Ogi](https://github.com/jacoyutorius)
