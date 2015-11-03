# Way Better Containment Applying&trade;

## What?
The containment process we went over in 4314, of course! Taking an input containment file and applying it to an existing layout to create something that `LSEdit` will let us work with.

## Why?
The process we went over in class was complicated and confusing. 99% of what we want to do actually only involves changing one file and then running one command! Furthermore, the naming convention chosen is arduous and hard to read. This reorganization allows us to hide the more confusing names, while still maintaining their use.

## How?
There's a script named `process.sh`. It has two invocation possibilities:
1. `./process.sh transform` will take the `input.contain` file, create a set of instances, and then apply a default template (`etc/layout.ta`) to it. The resulting file, `output.con.ta`, may be opened by `LSEdit`.
2. `./process.sh lse` will open `output.con.ta` for your viewing and examining pleasure.
