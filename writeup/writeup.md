# Esther vs The Machine at ICFPPC 2026
_July 28, 2026_

---

<p align="center">
<em>
In the era of contests, of AI, and of slop tired and sorry,
</br>
of heroes, and villains, and ideals old and starry,
</br>
stood those scrappy young upstarts called <a href="https://github.com/self-atari/icfp2025/blob/main/writeup/writeup.md">self.atari</a>.
</br>
</br>
They were <a href="https://github.com/prendradjaja">Pandu</a> and <a href="https://github.com/eswitbeck">Esther</a>. How they fought to survive!
</br>
and by sheer force of will, kept their standing alive
</br>
at the ICFP, in two thou' twenty-five.
</br>
</br>
But then in 'twenty-six, Pandu reached out by phone.
</br>
He was out finding wins <a href="https://gocongress.org/">over board and with stone</a>!
</br>
Of the duo remained: just fair Esther, alone.
</br>
</br>
As she then found herself on a one-woman team,
</br>
to pretend names of old would seem somewhat obscene.
</br>
Thus she christened her "group", <strong>Esther vers' The Machine</strong>.
</em>
</p>

---

Yes, a second year, and a second attempt at the [International Conference of
Functional Programming contest](https://icfpcontest2026.com/), this time by myself! As a
prelude refresher, this is a 72-hour annual programming contest. The premise is:
usually a very hard problem (or a series of problems that ends in something very
hard), with an open choice of programming language, and a prize of... well,
winning. There are plenty of solo groups, but teams of any size are allowed so
competition is steep.

Whereas last year took its thematic inspiration from <em>The Name of the
Rose</em>, this round takes another literary source:
<p align="center">
  <img
    src="little_men.jpeg"
    alt="The cover of Little Men, by Louisa May Alcott"
    height="900px"
  />
</p>
<p align="center"><em>
    Why Louisa May Alcott's more well-known book wasn't chosen is probably</br>
    a pointed question better aimed at computer science in general
</em></p>

...or rather, the little men that, as we all know, run about in our computers to
make them work. Did I mention the contest usually comes with a sense of humor?

More specifically, participants are given a new programming language of 'little
men' (represented with `@`, NetHack-style) in 2D text-art 'rooms' and asked to solve
a series of increasingly ridiculous problems in it.

<p align="center" style="font-size:20px;">
<code class="language-list">+----+         +----+
|   @|         |    |
|    |         |@   |
+----+         +----+
Hello!           Hi! 
</code>
</p>

There are 12 problems to start, with 4 to be added after the 'Lightning Round' of
the first 24 hours. You get 1 point if your boxes and men solve the problem
correctly and up to 1 more point depending on how close to the best solution
yours is (it's also possible to see how well other teams have done on each
problem and where you rank). Scoring rewards small and fast (but especially
small) solutions. The nice thing about this is that you're incentivized to solve
more problems poorly over perfecting solutions.

Men walk about one space at a time, changing direction when they walk over arrows
(`<`, `>`, `^`, `v`), holding numbers in their two hands, and performing
operations on those numbers when they walk over a handful of symbols. Some
symbols, as you might expect, allow them to make choices based on the numbers
they're holding.

Since they're (in the early round, at least) constrained to one man per room,
they have to send numbers to each other through 'pipes', which I like to imagine as
tin-can telephones.

<p align="center" style="font-size:20px;">
<code class="language-lisp">+----+        +----+
|   @|>---v   |    |
|    |    >-->|@   |
+----+        +----+
Sending      Got it!
 a 7!               
</code>
</p>

But the best part is that the website came with a beautiful visual debugger for
little man programs. Spaces are different colors, you can watch the little guys
run around and click to see what they're holding, you can add your own test
cases... it's fantastic.

<p align="center">
  <img
    src="debugger.png"
    alt="The debugger, illustrating a program that draws a smiley face"
    width="75%"
    		min-width="340px"
		max-width="600px"
  />
</p>
<p align="center"><em>They can even draw pictures!</em></p>

In previous years, the capacity to write your own tooling like this (within the
72 hours, of course) was often a huge advantage. This addition, thanks to the
hard work of the organizers, made approaching the problems really easy. And that
seems to be reflected in the number of scoring participants--almost double the
prior year!

I tried to keep a couple lessons from last year's foray in mind:
- Don't stay up late. At all. Just work during normal hours. There will not be
  anything productive done after 11pm.
- Move on to something new as soon as it looks like the approach is wrong. It
  feels better to get a score for the obvious solution than to think of (and not
  implement) something clever.
- Long breaks are also good!

Then there was the question of whether or not to use an LLM during the contest
(it's freely allowed). Some teams had announced a firm stance one way or the
other beforehand, but I made my choice at the last minute. I spend most of my
time at work these days talking to Claude, so avoiding it completely sounded like
a pleasant contrast. (It helps that I didn't expect to be at all competitive).

And with that, I was off, comfortably starting more than 4 hours after the
contest's 5am start!

<p align="center">
  <img
    src="thumbs_up.jpeg"
    alt="Posing with a thumbs up at the start of the contest, standing in front
    of my monitors"
    width="75%"
    		min-width="340px"
		max-width="600px"
  />
</p>
<p align="center"><em>They can even draw pictures!</em></p>

## Day 1

### Problem 1: Triangle

If the debugger made approaching the problems easy, it made writing this one
effortless. The problem is, given a number $$n$$, return the $$n$$ th number in
the list of
<p align="center">
    $$1, 1 + 2, 1 + 2 + 3,...$$
</p>
If you've heard of Gauss, you've almost certainly heard of the proof that this is
the same as
<p align="center">
    $$n(n + 1) / 2$$
</p>
You don't even have to write 'real' code for this
one--you can just put it directly in the editor!

<p align="center">
  <img
    src="triangle_1.png"
    alt="A slightly compacted solution to the problem, displayed in the debugger"
    width="50%"
  />
</p>
<p align="center"><em>The I and O are how the little men hear about the problem</em></p>

Thanks to live standings, it was possible to see that several teams were winning
with the same score. Along with pretty much every other participant, I tried to
work backwards from that score and figured there must be a solution in 8x8 and 13 steps. Despite my attempts, I couldn't fit it into under an 8x9 box.

### Problem 3: Reverse a List

## Day 2

### Problem 4: Sort

portion of a (suboptimal, and more embarrassingly, broken) sort algorithm
apparently called
[meansort](https://dl.acm.org/doi/pdf/10.1145/2163.358088).[^lisp]

[^lisp]:
    ```lisp
    (defun half-sort (len l)
      (if (= 1 len)
          l
          (let* ((avg (/ (loop for i in l sum i) len))
                 (less-than (filter (lambda (l) (>= avg l)) l))
                 (greater-than (filter (lambda (l) (< avg l)) l)))
            (append (half-sort (length less-than) less-than)
                    (half-sort (length greater-than) greater-than)))))
    ```
    [^author]

[^author]: Speaking of <em>Little Women</em>, the (real) algorithm was apparently
    designed by Dalia Motzkin, so that's neat!

## Day 3

### Please, something

<p align="center">
  <img
    src="history.png"
    alt="A ranking of my history submission: 149 out of 150"
    width="75%"
    		min-width="340px"
		max-width="600px"
  />
</p>
<p align="center"><em>
    <a href="http://www.harkavagrant.com/index.php?id=125">
        awww yiss
    </a>
</em></p>

[^history]
But that's not what we're here for!
We're doing stupid simple things. On to the next.

[^history]: The first improvements that look obvious are just taking the square of the
    length, adding a few rows experimentally for redirection, and compressing with
    boustrophedon. Compressing with a different base number would probably help, as
    might something like Huffman encoding[^huffman]. Maybe there's even something clever
    that lets you reuse individual digits?

[^huffman]: Although apparently other teams considered the encoding and the space cost of
    the codec was too much.

As a bonus, I realized I could trim an instruction from _Triangle_ and finally
condense my shape into 8x8. Not the perfect solution yet, but still points!

It turns out I completely forgot that rewriting is a thing, and that

$$n(n + 1) / 2 = (n^2 + n) / 2$$

You never need the 1 in the first place and can just apply `*` `+`. \*sigh\*

For _Memory_, the task was to 

## The elephant

At the time of the freeze, I was ranked 157 out of 268. Given my team was in the
bottom 10% last year, I'm counting this as a significant improvement.

<p align="center">
  <img
    src="final_standing.png"
    alt="A white board, with the heading 'PROBLEMS SOLVED' and 4 markers"
    width="75%"
    		min-width="340px"
		max-width="600px"
  />
</p>
