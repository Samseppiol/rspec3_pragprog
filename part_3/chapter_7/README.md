#### Finer Points of the three building blocks

## Describe 
> All the different variations on describe amount to the same thing: you say what it is you are testing. 

> The description can be a string, or any Ruby class, module or object. You can combine these two approaches and pass in a Ruby class/module/object followed by a string.

> Differences may seem subtle but passing a class name has some advantages. It first requires the class to exist and be spelled correctly.

## It 
> Creates a single example. Pass a description of behaviour you're specifying. You can also pass custom metadata to help RSpec run specific examples differently.

### Other ways to get the words right

> Describe makes the most sense when the examples in a group are all describing a single class, method or module. 

#### Context Instead of describe 

> Sometimes examples need to be grouped together because they are related to a shared situation or condition. 

#### Example instead of IT
> The it method has helpful aliases as well. Most of the time you are describing the subject of a sentence, in this instance, it makes sense to use. 

> However when providing several data examples rather than several sentences, it doesnt make much sense, instead 'example' can be used.