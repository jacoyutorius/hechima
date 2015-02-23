# Hechima

Enables to show View without Controller.


[![Gem Version](https://badge.fury.io/rb/hechima.svg)](http://badge.fury.io/rb/hechima)


## What is this?

Hechima can show View without Controller in Rails.
If you works with designer and developing Rails apps.
They don't want to touch "Black window". but you are busy! no time for execute "rails g controller" for them!!
or Simply want to show HTML that was made ​​in the mock-up in your apps.


![hechima](https://s3-ap-northeast-1.amazonaws.com/jacoyutorius-public-files/gif/hechima.gif)

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

#### Yuto Ogi
* github [https://github.com/jacoyutorius](https://github.com/jacoyutorius)
* Blog [http://jacoyutorius.com/](http://jacoyutorius.com/)
