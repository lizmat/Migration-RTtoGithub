use v6.c;
use Test;
use Migration::RTtoGithub;

plan 4;

is GH(127016),4921, "map from RT to GH";
is RT(4921),127016, "map from GH to RT";

is URL(127016),
  "https://github.com/Raku/old-issue-tracker/issues/4921",
  "URL for RT in GH";
is URL(127016, :old),
  "https://rt.perl.org/Ticket/Display.html?id=127016",
  "URL for RT in RT";

# vim: ft=perl6 expandtab sw=4
