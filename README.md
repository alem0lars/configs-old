# Configs

[![Stories in Ready](https://badge.waffle.io/alem0lars/configs.png?label=ready&title=Ready)](https://waffle.io/alem0lars/configs)

## Notes

### Configuration files format

The configurations aren't directly usable. This is because they're meant to be used with [`Fizzy`](https://github.com/alem0lars/fizzy).

It is an opinated tool to manage your configurations in multiple-systems, different OSes, different users with simple but powerful reuse machanisms. If you didn't, you should really check out it. You'll be astonished seeing how it can be simple (i.e. hassle-free).


## Troubleshooting

### I don't want to use `Fizzy`!

If you don't want to use `Fizzy` you can still use these configuration files but you have to take a look at the configuration files content and customize them to fit your needs. Here's a rule of thumb:

1. Replace variable substitutions (e.g. `get_var(...)`) with your desired value.
2. Remove variables / features availability checking and decide if you want the feature of not.

*If you don't want to use `Fizzy` you can think of the files format choice as a way to document the customizations that you should do.*
