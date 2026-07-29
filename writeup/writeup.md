# Esther vs The Machine at ICFPPC 2026
_July 28, 2026_

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
Functional Programming](https://icfpcontest2026.com/), this time by myself! As a
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
    width="75%"
    height="900px"
  />
</p>

...or rather, the little men that, as we all know, run about in our computers to
make them work.



With what I learned last time around, I hoped to follow a handful of new rules:
- Don't stay up late. At all. Just work during normal hours. There will not be
  anything productive done after 11pm.
- Move on to something new as soon as it looks like the approach is wrong. It
  feels better to get a score for the obvious solution than to think of (and not
  implement) something clever.
- 



## [prompt]

## Day 1

### Triangle

Thanks to live standings, it was possible to see that at least a dozen of the top
teams had converged on a solution with a score of 832, which was presumably the
optimal layout. 

Along with pretty much every other participant, I tried to work backwards from my
solution and figured there was a solution in 8x8 and 13 ticks

### Reverse a List

portion of a (suboptimal, and more embarrassingly, broken) sort algorithm
apparently called
[meansort](https://dl.acm.org/doi/pdf/10.1145/2163.358088).[^lisp]

[^lisp]: ```lisp
    (defun half-sort (len l)
      (if (= 1 len)
          l
          (let* ((avg (/ (loop for i in l sum i) len))
                 (less-than (filter (lambda (l) (>= avg l)) l))
                 (greater-than (filter (lambda (l) (< avg l)) l)))
            (append (half-sort (length less-than) less-than)
                    (half-sort (length greater-than) greater-than)))))
    ```

## Day 2

### Sort

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

[M]
But that's not what we're here for!
We're doing stupid simple things. On to the next.

As a bonus, I realized I could trim an instruction from _Triangle_ and finally
condense my shape into 8x8. Not the perfect solution yet, but still points!

It turns out I completely forgot that rewriting is a thing, and that

$$n(n + 1) / 2 = (n^2 + n) / 2$$

You never need the 1 in the first place and can just apply `*` `+`. \*sigh\*

For _Memory_, the task was to 

At the time of the freeze, I was ranked 157 out of 268. Given my team was in the
bottom 10% last year, I'm counting this as a significant improvement.


[M] The first improvements that look obvious are just taking the square of the
length, adding a few rows experimentally for redirection, and compressing with
boustrophedon. Compressing with a different base number would probably help, as
might something like Huffman encoding[N]. Maybe there's even something clever
that lets you reuse individual digits?

[N] Although apparently other teams considered the encoding and the space cost of
the codec was too much.
