# Iverson College 2024

This post is a write up the daily experience of the [array programming languages workshop/hackathon/hippiethon](https://iversoncollege.com/participants/) I'm attending over the week.

## Day 0: Sunday 18 August

The week started off with drinks and dinner for the attendees of the event.
It was fun meeting all the people I've been listening to over the last three years on the [Array Cast](https://www.arraycast.com).
I had some great chats with Kai, the implementor of [Uiua](https://www.uiua.org/), a stack-based modern array programming language, and Aaron Hsu, the implementor of Co-dfns, a compiler for a subset of Dyalog APL designed to target and run on GPUs.
This work was the topic of Aaron's PhD thesis [A data parallel compiler hosted on the GPU](https://scholarworks.iu.edu/dspace/items/3ab772c9-92c9-4f59-bd95-40aff99e8c7a).
This work seems super relevant to what I want to be doing on using SIMD for parsing and compiler implementation in general, so I'm already feeling like attending this was a pretty great thing for my PhD.
I'm looking forward to extracting as much knowledge from Aaron on writing compilers that can be SIMD accelerated over the next few days.
Kai seemed to be pretty interested in helping me write a compiler for a subset of Uiua over the next few days, which I'm also very happy with, I look forward to where we get to!

Just for fun, here's the compiler/interpreter pipeline for Co-dfns:

    Compile←{
     m←(-≢2⊃⎕NPARTS ⍵)↓⍵
     _←    ⊃⎕NGET ⍵ 1⊣⍞←'R'
     _←          TK _⊣⍞←'T'
     _←a n s src←PS _⊣⍞←'P'
     _←          TT _⊣⍞←'C'
     _←        m GC _⊣⍞←'G'
     f l←      m CX _⊣⍞←'B'
     f⊣⎕←l
    }

And here's the lowering step: <https://github.com/Co-dfns/Co-dfns/blob/master/cmp/TT.apl>

I also chatted with Brandon Wilson, who was mentored by Aaron in his project to write a YAML parser in APL using a similar approach: <https://www.youtube.com/watch?v=bb6sIAJjMeM>

## Day 1: Monday 19 August

We voted for some workshops for the week, and ended up with the following list, with afternoon sessions 2-4, and evening sessions 9-10:30.

Monday: Data Compression in APL & Intro to UIUA
Tuesday: Mesh Spreadsheet in K & exploratory programming in J
Wednesday: Games programming with Arrays in BQN & no evening session _(pizza night)_
Thursday: Pattern matching in K & Intro to shakti K &
Friday: Array techiques for parsing in APL & Promoting array languages & vector programming

Building up Huffman Coding trees in Uiua was fun, although I didn't manage to get a fully vectorised solution without staggered arrays during the workshop, and switched back to my project parsing Uiua. I can now parse Uiua array and number expressions, the next step is to parse addition and compile it to StableHLO.

It turns out that there's an intern at Dyalog writing up a document about the internal implementation of the tree data structures used in APL, I look forward to reading this when it's public.

## Day 2: Tuesday 20 August

The afternoon session was on [Mesh spreadsheets](https://github.com/chrispsn/mesh-spreadsheet/), an interactive code editor with spreadsheet visualisation, with formulae written in [ngn/k](https://codeberg.org/ngn/k). I remember seeing his demos years ago, it was great to chat with him about his design process. Sadly it looks like he's not planning to do anything with them now that he has a job.

The evening session was on exploratory programming in APL, which I followed for some of it, but I was mostly hacking on the Uiua compiler. The parser is now complete, I can generate ASTs for the programs I care about as step 0, with filecheck tests. The aim for today is to codegen and jit an identity function.

Aaron sat down and walked me through the co-defns compiler yesterday, I'm now in a much better position to understand what's going on, and hopefully replicate some of it for my own work.

## Day 3: Wednesday 21 August

We recorded an episode of the Array cast on Wednesday!
It was an open-ended discussion on "Which is the best Array language?", it was a lot of fun to listen in to implementors of many of the most used array languages discuss the relative merits of different approaches.
The difficulty with this question is that the different languages are adapted to their most popular use-cases, making it hard to agree on what metric to use, but there were many interesting points regardless.
I look forward to hearing the episode when it comes out!

The afternoon session was about using a library called [raylib](https://github.com/raysan5/raylib) that Brian wrote a [BQN wrapper](https://github.com/Brian-ED/rayed-bqn?tab=readme-ov-file).
It was great to see an array language being used in something playful and interactive, and the demo games looked fun and compelling.
I tried to follow the installation instructions for [CBQN](https://github.com/dzaima/CBQN) during the presentation to try the game out, and it failed during one of the building steps.
In contrast, getting from not having Uiua to running it on my computer took about five minutes, more on this later.

## Day 4: Thursday 22 August

The sessions on Thursday were intro to Shakti K by Chris and Pattern Matching and Inversion by Pierre.
Both were very interesting, especially the invertible expressions in the afternoon session, but I didn't make the most of these due to mostly concentrating on my UIUA compilation hacking.

## Day 5: Friday 22 August

Afternoon session array techniques for parsing Aaron Hsu.
This was a very helpful walk through the way that Aaron approaches some of these problems, and was as much about the approach itself as about the parsing task.
Aaron advocates for a very fundamental rethink of the way software is written and organised, and he makes a very compelling case.
To summarise the approach, the idea is to avoid as much data type abstraction as possible, keeping all the working data in flexible and powerful data structures such as arrays, and to encode the relations between the conceptual items one is dealing with, such as nodes in a tree or graph, not as pointers between objects but as indices within the array.
One of the arguments he makes is that this approach is particularly powerful when coupled with APL's syntax and semantics, and to attempt it without APL's environment is to throw the baby out with the bath water.
I think that one of the weak points of the approach is that it's quite a bit more demanding on the programmer writing or reading the code, which may be a good thing, but is also a hard sell.

The evening session was on Promoting array languages, with a brief discussion about the Waterloo and York university APL archives by Kyoung.
One of the points that wasn't clear is the metric on which the promotion of the languages should be evaluated.
APL and many other array languages are from a different era, when people routinely paid for the programming languages they used.
For a long time APL, and later K, were so far ahead of other tools in some domains that the model has kept working, but there is general skepticism that this will keep being the case into the future.
My favourite point that was raised is that it's very difficult to explain the benefit of the array paradigm to people, and that historically people have been sucked into the field by spending some time actually playing with the system, usually with a mentor, as opposed to some objective reasons to use it.

One of my favourite aspects of this discussion, and the week overall, was the optimistic and positive outlook of everyone involved.
It feels like everyone I met values array languages primarily for their subjective empowerment of the user, where the language is similar in spirit to Steve Jobs's _bicycle for the mind_ idea, letting us reach beyond our usual unaugmented cognitive abilities.
There are few things that energise me more than being surrounded by people who are really enthusiastic about the work that they do, and this edition of Iverson College definitely delivered.

I managed to compile my minimal example of a Uiua program using xDSL at 22:47 on the last day of the meeting, during Kyoung's update on the state of the APL archive.
Despite it being so late, many of the attendees stayed until midnight to hear my presentation about [the compiler](https://github.com/superlopuh/xuiua), and my vision of how MLIR and Array languages can complement each other in our new era of progressively weirder specialized linear algebra accelerators.
(I'll write the compiler up more in the coming weeks.)
I am elated to have attended this very special camp for Array Language enthusiasts, and look forward to the next one!
