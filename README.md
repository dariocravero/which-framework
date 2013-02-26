# Which framework

Tells the Ruby Web framework you're on.

*Currently supports: Padrino, Rails and Sinatra.*

## Usage

Copy and paste ```which_framework.rb``` or any part of it you may need into your project's folder.
I thought about making a gem but I reckon it's an overkill.

```
# Tells which framework exists on a given path
WhichFramework.which_is_it?('/path/to/framework')
```

```
# Tells if the current dir contains Padrino
WhichFramework.is_padrino?
```

## Want your framework in?

Fork and add it! ;)

Or create an issue with its name (to uniquely identify it) and which file we should be looking at, if any, that would generally exist. :)
