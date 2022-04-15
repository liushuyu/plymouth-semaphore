Semaphore / 灯语
================

Semaphore is a theme originally inspired the Microsoft Codename "Whistler" Beta
2 boot splash, briefly used between builds 5.1.2428.1 and 5.1.2469.0 (based on
[known/leaked builds](http://www.thecollectionbook.info/gallery/?f=/windows/nt%20kernel/windows%20xp/)).
The smooth four-colour banner fades in and out in a
[smooth, staggered fashion](https://www.deviantart.com/oscareczek/art/Windows-Whistler-Beta-2-boot-screen-537606861). A perfect match for our
four-colour theme used in our community logo.

Another consideration that came into play is that, based on our
[design principles](https://wiki.aosc.io/aosc-os/is-aosc-os-right-for-me/), we
try our best not to include logos and names of our distro in the installed
system. We consider our distro (hopefully) a useful and handy tool for our users
and as such, they should pay no mind to what they are actually using. The splash
only needs to look good and we will hint at our community colour scheme only
during startup.

Now, we wouldn't claim that we've made a perfect replica - that'd be illegal.
So we deliberated over it some more with fellow community contributors and
thought, hey, why don't we use the fading patterns as a motif - like a...
Semaphore, to denote different system statuses during non-interactive stages?
So, here's what we came up with.

How was it done?
----------------

Good question, the sequences are fairly simple, taking up only 35 frames in the
original design. Based on different stages they represent, there are a total of
three semaphore patterns and five total schema.

We have made some [video samples](DEMO.md) to demonstrate all of our semaphore
schema. Download and play on loop.

### Semaphore: System Startup

*Used by: System Startup, LiveKit/RescueKit Startup, S4 (Hibernation)
Exit/Resume.*

Here, the first block gradually gains opacity by an increment of 10% and, when
the first block reaches an opacity of 60%, the next block gains an opacity of
10%. As the second block reaches 60% opacity, the next block gains 10%. Same
goes for the 4th and final block.

### Semaphore: System Hibernation

*Used by: S4 (Hibernation) Entry.*

Basically, the semaphore pattern is a mirror of the "System Startup" semaphore.
Starting from the 4th block, as it reaches 60% opacity, the third block gains
10% opacity, so on and so forth.

### Semaphore: System Shutdown

*Used by: System Shutdown.*

This semaphore follows the 60%/10% pattern, though the sequence becomes one of
a 1-3-2-4 altenation.

Who made this?
--------------

- Original author: [@Microsoft](https://github.com/Microsoft) (yes).
- Semaphore design: [@MingcongBai](https://github.com/MingcongBai).
- Comments: Various community contributors. With special thanks to...
    - [@eatradish](https://github.com/eatradish), for her comments and an
    animation sequence generator (it's happening, right?).
    - [@CamberLoid](https://github.com/CamberLoid),
    [@KexyBiscuit](https://github.com/KexyBiscuit),
    [@Neruthes](https://github.com/Neruthes),
    [@rickliu2000](https://github.com/rickliu2000),
    [@ziyao233](https://github.com/ziyao233) for their invaluable critiques.
