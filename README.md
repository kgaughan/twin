# twin

Twin is a [Gemini][] client.

## Building

Twin is written in [Vala][] and uses [Meson][] (and thus [Ninja][]) to build.
Also, to build, you'll need to ensure the Gtk+ libraries are installed. On
Debian, you can do this with:

    apt install meson valac libgtk-3-dev

To build:

    mkdir build
    meson . build
    ninja -C build

[Gemini]: https://gemini.circumlunar.space/
[Vala]: https://www.vala-project.org/
[Meson]: https://mesonbuild.com/
[Ninja]: https://ninja-build.org/
