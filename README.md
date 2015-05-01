# Configs

[![Stories in Ready](https://badge.waffle.io/alem0lars/configs.png?label=ready&title=Ready)](https://waffle.io/alem0lars/configs)

This repository contains a complete set of configurations, viable in different ways:

1. **`Fizzy`**:
  
  [`Fizzy`](https://github.com/alem0lars/fizzy) is a tool, an opinated way to manage your configurations in multiple-systems, different OSes, different users with simple but powerful reuse machanisms. If you didn't, you should really check out it. You'll be astonished seeing how it can be simple (i.e. hassle-free).
  
  We want our configurations to be available with `Fizzy`!

  If you're interested in this option, check out the [`fizzy` branch](https://github.com/alem0lars/configs/tree/fizzy).

2. **`Nix`**:
  
  `Nix`-based configurations. These should be functionally similar to `Fizzy` ones but using `Nix` instead of `Fizzy`.

  If you're interested in this option, check out the [`nix` branch](https://github.com/alem0lars/configs/tree/nix).

3. **Plain**:

  We never want to store plain configuration but using a configuration management system, but *sometimes we need plain files, because some configurations aren't designed to be managed with a tool*.
  
  For example `rEFInd` configuration cannot be managed with a configuration system like `Fizzy` because when the configuration is evaluated the filesystem isn't already mounted (`rEFInd` is a boot-manager), so the configuration file can't be a symbolic link to a file stored in a partition.
  Also, `EFI` partition isn't mean to be mounted or used elsewhere except when booting, i.e. you shouldn't normally mount that partition.
  
  These cases are really a few and you should always ask yourself whether using a plain configuration is *really necessary*. I've *only found that use-case* and, trust me, I managed a lot of really different configurations and software..

  To see the contents, check out the [`plain` branch](https://github.com/alem0lars/configs/tree/plain).

----

**Please notice that `master` branch should be kept empty** (except for [README.md](./README.md), [LICENSE](./LICENSE) and that kind of stuff..).

**We should move the other contents from `master` to `fizzy`.. See [this issue](https://github.com/alem0lars/configs/issues/2)**.
