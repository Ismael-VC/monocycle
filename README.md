# Bicycle

[Bicycle](https://wiki.xxiivv.com/drifblim) is a [Uxntal](https://wiki.xxiivv.com/site/uxntal.html) REPL written in that same language.

## Build

You must have an [Uxn](https://git.sr.ht/~rabbits/uxn/) assembler and emulator.

```sh
uxnasm src/bicycle.tal bin/bicycle.rom
```

If do not wish to assemble it yourself, you can download [bicycle.rom](https://rabbits.srht.site/bicycle/bicycle.rom).

## Run

This is meant to be a companion application to [Left](http://wiki.xxiivv.com/site/left.html). Begin by launching left and bicycle:

```sh
uxnemu left.rom | uxnemu bin/bicycle.rom
```

To send code to be assembled and evaluated by Bicycle from Left, select some text in Left and send it to Bicycle with `ctrl+p`. Alternatively, uxntal can be written directly into the console, and will be evaluated on `enter`.

## Support

- [theme](https://wiki.xxiivv.com/site/theme.html)
- [snarf](https://wiki.xxiivv.com/site/snarf.html)
- Linted with [uxnlin](https://git.sr.ht/~rabbits/uxnlin)
- Assembled with [drifblim](https://git.sr.ht/~rabbits/drifblim)

