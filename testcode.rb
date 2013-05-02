require 'json'
some_json = '{"title":"This Is Saturn\'s Behemoth Hurricane",
"channel":"US & World"}'

some_ruby_object = JSON.load some_json
some_ruby_object.keys

some_more_json = '["Foo", "Bar", "Baz"]'
another_ruby_object = JSON.parse some_more_json
another_ruby_object.first