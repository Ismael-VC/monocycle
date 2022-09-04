# Bicycle

[Bicycle](https://wiki.xxiivv.com/drifblim) is a [Uxntal](https://wiki.xxiivv.com/site/uxntal.html) REPL written in that same language.

## Build

This assembler is written in the language it is assembling, creating a chicken-and-egg problem. You have two choices, download a pre-assembled [drifblim.rom](https://rabbits.srht.site/drifblim/drifblim.rom)(1300 bytes), or use [uxnasm.c](https://git.sr.ht/~rabbits/uxn/tree/main/item/src/uxnasm.c).

```sh
uxnasm src/bicycle.tal bin/bicycle.rom
uxn11 bin/bicycle.rom
```

If do not wish to assemble it yourself, you can download [bicycle.rom](https://rabbits.srht.site/bicycle/bicycle.rom).

## Support

- [theme](https://wiki.xxiivv.com/site/theme.html)
- [snarf](https://wiki.xxiivv.com/site/snarf.html)
- Linted with [uxnlin](https://git.sr.ht/~rabbits/uxnlin)
- Assembled with [drifblim](https://git.sr.ht/~rabbits/drifblim)

