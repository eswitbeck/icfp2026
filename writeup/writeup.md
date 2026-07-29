# Esther vs The Machine at ICFPPC 2026
_July 28, 2026_

<p align="center">
_In the era of contests, of AI, and of slop tired and sorry,
_of heroes, and villains, and ideals old and starry,
_stood those scrappy young upstarts called [self.atari](https://github.com/self-atari/icfp2025/blob/main/writeup/writeup.md).

_They were [Pandu](https://github.com/prendradjaja) and [Esther](https://github.com/eswitbeck). How they fought to survive!_
_and by sheer force of will, keep their standing alive_
_at the ICFP, in two thou' twenty-five._

_But then in 'twenty-six, Pandu reached out by phone.
_He was out finding wins [over board and with stone!](https://gocongress.org/)_
_Of the duo remained: just fair Esther, alone._

_As she then found herself on a one-woman team,_
_to pretend names of old would seem somewhat obscene.
_Thus she christened her "group", *Esther vers' The Machine*._
</p>



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
