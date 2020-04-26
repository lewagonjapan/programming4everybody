## Welcome!

This repository contains all the files you'll see during the webinars of the course Programming for Everybody hosted by [Le Wagon Tokyo](https://www.lewagon.com/tokyo). Welcome aboard! 🎉

#### ⚠️ IMPORTANT

Any tool you see a teacher using during a live session is **free to use** and **optional** to this course. The applications we'll present are used by thousands of successful tech companies around the world (including us!), and we'll utilise them to show you how to work in a real development environment.

If you don’t have any prior experience, please just follow the session, ask your eventual questions at the end of it, write and share your experience with your classmates on [the Slack workspace](https://le-wagon-tokyo.slack.com), and **don’t do anything else described here**. As explained during the program presentation, this course is just an extension of the [Codecademy Ruby track](https://www.codecademy.com/learn/learn-ruby), and you are not required to do anything more than following the meetings.

## Table of contents

- [Usage](#usage)
- [Setup](#setup)
  - [REPL](#repl)
  - [Git and Ruby](#git-and-ruby)
- [General overview](#general-overview)
- [Typical session](#typical-session)
- [Going further](#going-further)

## Usage

Please star the repository, or just bookmark the page in your favourite browser.

Each Ruby file you see in this repository will be filled by a teacher during the corresponding session. In the [`slides`](https://github.com/lewagonlisbon/programming4everybody/tree/master/slides) folder you can see and download the slides we share during our lessons.

You'll also find a `test` folder in this repository. **Don't edit or delete any file outside this folder**: it's important to always keep your personal experiments in a separate place! 🧪

## Setup

**N.B:** This is a free online learning series, and our teachers **won't** be able to help you with your computer configuration. If you are just moving your first steps (you don't know Git, Ruby, what a terminal is, or any of the tools we are using), please just watch the videos and, if you feel confident enough, use a REPL as described below. Want to learn to configure your computer like a pro? **[Do it with us!](#going-further)**

### REPL

You can use a [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) to see and interact with the code we share every session.

First, [create an account on Repl.it](https://repl.it/signup). Once logged-in, come back here and click this button 👉 [![Run on Repl.it](https://repl.it/badge/github/lewagonlisbon/programming4everybody)](https://repl.it/@lewagonlisbon/programming4everybody) to open this repository there, then click `fork` to save a copy in your personal REPLs collection.

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/repl1.png)

Now click on the file `README.md` to open it, and... wait a second, that's me! 🤖

You can use the Ruby console on the right to run quick tests, or create more complex files in the `test` folder and execute them from the integrated shell.
If the shell window is not displaying automatically, open it manually or with the ⌘⇧S shortcut (see the first picture below), and run your test files from there with `ruby test/name_of_the_file.rb`.

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/repl2.png)

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/repl3.png)

After a session ends, switch to the `Version Control` tab and click `Pull` to get the new files from the lecture.

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/repl4.png)

**N.B:** if the pull command doesn't work, it's probably because you edited some files you shouldn't touch! 🛑 Check which ones under `Changed files or folders`, and if they don't belong to the `test` folder, make them look exactly as the ones on GitHub, then click `Pull` again. If this doesn't help either, just come back here and follow the instructions again to create a new copy ☝️

### Git and Ruby

**ONLY** if you already have:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation) installed (type `ruby --version` in your terminal, it should give you a version >= 2.2)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed (`git --version` should be >= 1.7)
- a [GitHub profile](https://github.com/join)
- some basic knowledge of programming

you can clone this repository on your computer and fetch the new changes after each session.

First, fork (copy) this repository to your profile.

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/fork.png)

Then, open your terminal and run the following commands one at a time (always read the comments carefully, they're there for a reason! 👀):

```sh
# TODO: change with your GitHub username
GITHUB_USERNAME="your-github-username"

# 1. Create a new folder where to keep your personal projects:
[ ! -d ~/code ] && mkdir ~/code
[ ! -d ~/code/$GITHUB_USERNAME ] && mkdir ~/code/$GITHUB_USERNAME
cd ~/code/$GITHUB_USERNAME

# 2. Clone the repository from your GitHub and connect to @lewagonlisbon's one (run JUST ONCE):
git clone https://github.com/$GITHUB_USERNAME/programming4everybody.git
cd programming4everybody
git remote add upstream https://github.com/lewagonlisbon/programming4everybody.git
git fetch --all
git reset --hard upstream/master

# 3. Open the repository in your favourite editor:
atom . # or `open -a Atom .`
subl . # or `open -a "Sublime Text" .`
code . # or `open -a "Visual Studio Code" .`
```

Check our code from the webinars in your editor and play around in the `test` folder. You can run your test files in the terminal with `ruby test/a_test_file.rb`, or type `irb` to open an interactive Ruby console.

After each session, get the latest updates with:

```sh
git fetch --all
git reset --hard upstream/master
```

> **Bonus**: if you use [Atom](https://atom.io), you can install the [Teletype package](https://teletype.atom.io) and interact with our code when you ask for a live help! 🤓
>
> ![](https://blog.atom.io/img/posts/teletype/code-together.gif)

## General overview

Our program has 10 lessons, following [Codecademy’s free Ruby track](https://www.codecademy.com/learn/learn-ruby):

1. [`Introduction to Ruby`](https://github.com/lewagonlisbon/programming4everybody/blob/master/01_introduction.rb) Wednesday, April 8th
2. [`Control flow in Ruby`](https://github.com/lewagonlisbon/programming4everybody/blob/master/02_control_flow.rb) Friday, April 10th
3. [`Looping with Ruby`](https://github.com/lewagonlisbon/programming4everybody/blob/master/03_looping.rb) Monday, April 13th
4. [`Arrays and Hashes`](https://github.com/lewagonlisbon/programming4everybody/blob/master/04_arrays_and_hashes.rb) Wednesday, April 15th
5. [`Blocks and Sorting`](https://github.com/lewagonlisbon/programming4everybody/blob/master/05_methods_and_blocks.rb) Friday, April 17th
6. [`Hashes and Symbols`](https://github.com/lewagonlisbon/programming4everybody/blob/master/06_hashes_and_symbols.rb) Monday, April 20th
7. [`Refactoring`](https://github.com/lewagonlisbon/programming4everybody/blob/master/07_refactoring.rb) Wednesday, April 22nd
8. [`Procs and Lambdas`](https://github.com/lewagonlisbon/programming4everybody/blob/master/08_procs_and_lambdas.rb) Friday, April 24th
9. [`Object-Oriented Programming, Part 1`](https://github.com/lewagonlisbon/programming4everybody/blob/master/09_oop.rb) Monday, April 27th
10. [`Object-Oriented Programming, Part 2`](https://github.com/lewagonlisbon/programming4everybody/blob/master/10_oop.rb) Wednesday, April 29th

## Typical session

- _13h00-13h25_ (GMT+1) **Live session** on [Livestorm](https://app.livestorm.co/le-wagon-portugal) with Le Wagon's teachers showing lots of live-demos to help you understand the concepts using practical examples
- _13h25-13h45_ **Q&A session** where you'll be able to ask the teachers any question you might have and share your screen with them for a live help
- _13h45-?_ **Keep coding!** Use [the Slack workspace](https://programming4everybody.slack.com) to find a buddy and work with him, interact with other classmates, or just send a funny gif 🙈

For each session, a private link to the meeting will be shared on the course Slack channel. The Livestorm meetings and Slack workspace are **private**, and only authorised participants can access them 🔒

**N.B:** to keep the lecture as interactive as possible, if you share your screen with the rest of the participants, we ask you to do it for **no more than 2 minutes** per session, excluding any eventual extra presentation 🙋🏼‍♀️🙋🏽‍♂️

## Going further

Can't wait to know more about programming? **[Apply to Le Wagon](http://www.lewagon.com/tokyo/apply)**, and learn how to build the app of your dreams with us! 🚀

By completing this course, **you get a special 50,000¥ off the next Tokyo course tuition** (starting June 29th)! 🇯🇵
Applications are open for our next batches, check out the dates on our website and [get in touch with Sylvain](https://app.slack.com/client/T0110B1KQP3/D011C474D2P).

You can also follow us on [Meetup](https://www.meetup.com/Le-Wagon-Tokyo-Coding-Station/), [Facebook](https://www.facebook.com/lewagontokyo), [Instagram](https://www.instagram.com/lewagontokyo), [Twitter](https://twitter.com/LeWagonTokyo) or [LinkedIn](https://www.linkedin.com/showcase/18655908/) and stay involved in our amazing community 🤩

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/lisbon.jpg)
# programming4everybody
