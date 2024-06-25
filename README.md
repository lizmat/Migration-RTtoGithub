[![Actions Status](https://github.com/lizmat/Migration-RTtoGithub/workflows/test/badge.svg)](https://github.com/lizmat/Migration-RTtoGithub/actions)

NAME
====

Migration::RTtoGithub - mapping of old RT tickets to GitHub issues

SYNOPSIS
========

```raku
use Migration::RTtoGithub;

say GH(127016);  # 4921
say RT(4921);    # 127016

say URL(127016);        # https://github.com/Raku/old-issue-tracker/issues/4921
say URL(127016, :old);  # http://rt.perl.org/Ticket/Display.html?id=127016
```

DESCRIPTION
===========

Migration::RTtoGithub is a small library that contains the information for mapping old RT tickets for Perl 6 to Raku tickets on GitHub in the Raku/old-issue-tracker repository.

SUBROUTINES
===========

GH
--

```raku
say GH(127016);  # 4921
```

Return the number of the Github issue associated with the given RT ticket number.

RT
--

```raku
say RT(4921);    # 127016
```

Return the number of the RT ticket associated with the given Github issue number.

URL
---

```raku
say URL(127016);        # https://github.com/Raku/old-issue-tracker/issues/4921
say URL(127016, :old);  # http://rt.perl.org/Ticket/Display.html?id=127016
```

Return the URL of the Github issue for the given RT ticket if possible. If there is no known mapping, then the URL of the RT ticket will be returned: you can then use that to see if the original RT site will redirect you to a Github issue or not. You can also for the URL of the original site to be returned by specifying the `:old` named argument.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Migration-RTtoGithub . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2020, 2021, 2024 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

