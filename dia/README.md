# Dia Cross Platform Tests

Tests to check how to obtain identical SVGs from Dia diagrams on Windows and Linux — see:

- [tajmone/Git-Buch_EN#26] — Rake Tasks for Dia to SVG?
- [alan-docs » Wiki » Dia Diagrams]


The `build.sh` script will generate two SVG files per execution from the `sample.dia` source diagram, each output file embedding info about the OS and version of the tools employed:

1. Plain SVG from Dia — e.g.`sample__Win__Dia0.97.svg`
2. Optimized version via SVGO — e.g. `sample__Win__Dia-0.97__SVGO-2.6.1.svg`

The repository tracks all generated files, so we can diff-compare the output from various Dia and SVGO versions to check whether they are identical or not.

> **NOTE** — These tests require the correct fonts to be installed — see:
>
> - [Git Book Diagrams » Diagrams Fonts]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[tajmone/Git-Buch_EN#26]: https://github.com/tajmone/Git-Buch_EN/issues/26 "#26 — Rake Tasks for Dia to SVG?"
[alan-docs » Wiki » Dia Diagrams]: https://github.com/alan-if/alan-docs/wiki/Dia-Diagrams
[Git Book Diagrams » Diagrams Fonts]: https://github.com/tajmone/Git-Buch_EN/tree/beta-dev/assets_src/img/dia#diagrams-fonts

<!-- EOF -->
