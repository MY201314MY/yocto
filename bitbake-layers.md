# help

```shell
pi@inspiron:~/Documents/yocto/poky/build$ bitbake-layers --help
NOTE: Starting bitbake server...
usage: bitbake-layers [-d] [-q] [-F] [--color COLOR] [-h] <subcommand> ...

BitBake layers utility

options:
  -d, hdebug           Enable debug output
  -q, --quiet           Print only errors
  -F, --force           Force add without recipe parse verification
  --color COLOR         Colorize output (where COLOR is auto, always, never)
  -h, --help            show this help message and exit

subcommands:
  <subcommand>
    add-layer           Add one or more layers to bblayers.conf.
    remove-layer        Remove one or more layers from bblayers.conf.
    flatten             flatten layer configuration into a separate output directory.
    show-layers         show current configured layers.
    show-overlayed      list overlayed recipes (where the same recipe exists in another layer)
    show-recipes        list available recipes, showing the layer they are provided by
    show-appends        list bbappend files and recipe files they apply to
    show-cross-depends  Show dependencies between recipes that cross layer boundaries.
    layerindex-fetch    Fetches a layer from a layer index along with its dependent layers, and adds them to conf/bblayers.conf.
    layerindex-show-depends
                        Find layer dependencies from layer index.
    create-layer        Create a basic layer

Use bitbake-layers <subcommand> --help to get help on a specific command
```

# example

```shell
bitbake-layers show-recipes

bitbake-layers show-overlayed

bitbake-layers show-layers

bitbake-layers show-appends
```

