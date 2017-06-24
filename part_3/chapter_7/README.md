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

#### Specify instead of It
> Sometimes neither it or example reads well. RSpec provides the specify alias. 


# Sharing Common Logic 
> Three organisation tools are let definitions, hooks and helper methods.

## Hooks 
> For situations where a let block won't cut it. 
> Three kinds of hooks in RSpec, named after what they run.
> Before 
> After 
> Around

> Before and after hooks are related.
### Before and after
> After hooks are guaranteed to run after your examples, even if the example fails or the before hook raises an exception. Intended to clean up after your setup and logic specs.

> Around hooks sandwich spec code inside your hook, so part of the hook runs before the example and part runs after.

### Config Hooks 
> Before, after and around hooks go inside example groups. If you only need hooks to run for one set of examples then this is fine. But if hooks are needed to run for multiple groups, copying and pasting code is tiring and dry.

> In this situation you can define hooks for your entire suite once as a configure block, typically put in spec/spec_helper.rb

> However they run for every example in your test suite. Trade offs are:
> Global hooks reduce duplication but can lead to surprising 'action at a distance' effect in your specs. 
> Hooks inside example groups are easier to follow, but it's easy to leave out an important hook by mistake when creating a new file.

