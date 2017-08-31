# Crush

Crush is a script that runs Lua script using the interpreter embedded inside [Love](https://love2d.org).

## Usage

Create a Lua script (eg: random.lua)

```lua
print("Here is a random number : " .. love.math.random())
```

Run it using crush

```sh
$ crush random.lua
Here is a random number : 0.68980386685727
```
