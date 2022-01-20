# Godot overscan demo

This demonstrates how viewport overscan can be used to improve screen-space
effect consistency at a GPU performance cost. This affects any screen-space
effect, but the ones where the difference is most notable is SSAO, SSIL
and SSR.

Overscan values that provide the best performance/quality ratio are between
1.04 and 1.08 depending on the scene and effect intensity.

Note that this project does not support viewport resizing yet; it will always
remain at its default resolution of 1280×720. Due to sub-pixel precision errors,
the image may also appear to be slightly less sharp when overscanned
(a more polished implementation could likely avoid this).

## Controls

- <kbd>Space</kbd>: Play/pause camera animation

## License

Copyright © 2022 Hugo Locurcio and contributors

Unless otherwise specified, files in this repository are licensed under the
MIT license. See [LICENSE.md](LICENSE.md) for more information.

- `zdm2.obj` is from [game-maps-obj](https://github.com/Calinou/game-maps-obj)
  and is [licensed under CC BY 4.0](https://github.com/Calinou/game-maps-obj/blob/master/sauerbraten/zdm2.txt).
