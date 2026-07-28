# Esther vs The Machine at ICFPPC 2026
_July 27, 2026_

## [intro]

[last year's teammate]() was preoccupied, winning games at the [US Go
Congress](). It seemed improper to compete with our team name, so after a bit of
fiddling, I submitted under the name "Esther vs The Machine".



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

portion of a (suboptimal, and more importantly, broken) mean sort implementation

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


---

[M] The first improvements that look obvious are just taking the square of the
length, adding a few rows experimentally for redirection, and compressing with
boustrophedon. Compressing with a different base number would probably help, as
might something like Huffman encoding[N]. Maybe there's even something clever
that lets you reuse individual digits?

[N] Although apparently other teams considered the encoding and the space cost of
the codec was too much.
