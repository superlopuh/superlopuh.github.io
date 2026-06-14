#import "cv_helpers.typ": *

#let chiline() = {}//{v(-3pt); line(length: 100%, stroke: 0.5pt); v(-5pt)}

#let french_flag_blue_0 = rgb("#0055A4")
#let french_flag_blue_1 = rgb("#002654")

#let TODO = [#text(red)[TODO]]

#let name = "Sasha Lopoukhine"

#show: resume.with(
  author: name,
  accent-color: french_flag_blue_0,
)

Cambridge, UK |
#link("mailto:sasha@lopoukhine.com")[sasha\@lopoukhine.com] |
#link("https://lopoukhine.com")[lopoukhine.com] |
#link("https://github.com/superlopuh/")[GitHub] |
#link("https://scholar.google.com/citations?user=EiOczX8AAAAJ&hl=en")[Google Scholar]


/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
 * #work(company: "", dates: "", location: "", title: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */
== Education

#edu(
  institution: "University of Cambridge",
  location: "Cambridge, UK",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Present"),
  degree: [PhD in Computer Science supervised by #link("https://grosser.science/")[Tobias Grosser]],
)
Developing assembly-level MLIR representations and compiler tooling for linear-algebra micro-kernels on AI accelerators.

CGO 2025: #link("https://dl.acm.org/doi/10.1145/3696443.3708952")[A Multi-level Compiler Backend for Accelerated Micro-kernels Targeting RISC-V ISA Extensions]
Developed an MLIR-based linear algebra micro-kernel backend that targets ETH's Snitch Core, yielding 95% FPU utilization and 94% of theoretical maximum throughput for our chosen kernels. Neural networks compiled via this micro-kernel outperform output of LLVM by >20x.

CGO 2025: #link("https://dl.acm.org/doi/abs/10.1145/3696443.3708945")[Sidekick compilation with xDSL]
Leading development of xDSL, a Python-native, MLIR-compatible compiler framework used to prototype and ship compiler infrastructure in Python.
Now at 1M+ PyPI downloads and 125+ contributors; production use includes quantum compilers (Riverlane, Xanadu, Eclipse) and Google LiteRT; research integrations include Devito and PSyclone.
Featured in #link("https://maintainermonth.github.com/academia/xdsl-maintainer-spotlight")[GitHub Maintainer Month]; added to the CPython performance benchmark suite; cited in PEP 747.

Supervised four BA and one MA dissertation projects, one of which won silver at the #link("https://src.acm.org/winners/2024")[CGO 2024 student research competition].

#edu(
  institution: "University of Cambridge",
  location: "Cambridge, UK",
  dates: dates-helper(start-date: "2012", end-date: "2015"),
  degree: "BA in Computer Science - II.i",
)
Received Bob Diamond prize for Computer Science.

#chiline()

== Employment History

#work(
  title: "Student Investment Partner (promoted from Venture Fellow)",
  location: "Cambridge, UK",
  company: "Creator Fund",
  dates: dates-helper(start-date: "Oct 2024", end-date: "Present"),
)

Sourced Cambridge-based startups and conducted technical due diligence for investment decisions.

#work(
  title: "Co-Founder & Chief Engineering Officer",
  location: "Los Angeles, CA",
  company: "Cub3",
  dates: dates-helper(start-date: "Sep 2021", end-date: "Jan 2022"),
)
Co-founded Cub3; led engineering from zero to MVP of a Web3 fan-engagement platform.

#chiline()

#work(
  title: "Software Engineer",
  location: "Cupertino, CA",
  company: "Apple",
  dates: dates-helper(start-date: "Mar 2018", end-date: "Sep 2021"),
)

#link("https://www.macrumors.com/guide/photos/")[Curated Library] – iOS 13 feature shipped to *1B+ devices*.
- Built the #link("https://sixcolors.com/post/2019/09/13-features-of-ios-13-photos/")[Years/Months/Days] timeline from photo metadata. *Patent*: US20200356227A1 – *Curated Media Library*
- Profiled and optimized Years/Months/Days timeline computation to ensure low-latency processing when taking photos.

#link("https://support.apple.com/en-gb/guide/iphone/iphd4f70e68f/18.0/ios/18.0")[On-disk graph] – Implemented a graph database for Memories data (\~1000x prior capacity).
- Unlocked on-demand availability of all Memories, automatic song selection, and next memory suggestion.
- Led the migration of existing features with minimal regressions, reducing benchmark runtime *9×* (90 → 10 min).

#link("https://www.youtube.com/watch?v=0TD96VTf0Xs&t=1402s")[Next memory suggestion] – Developed a recommendation engine for Memories.

#link("https://appleinsider.com/articles/21/06/07/memories-features-in-photos-app-gets-apple-music-integration-new-features-in-ios-15")[Apple Music in Memories] – Led feature extraction from the Memories DB for music recommendation.
- Mentored the team on Swift and software architecture.

#chiline()
#pagebreak()

#work(
  title: "iOS Engineer",
  location: [Paris, France],
  company: [#link("https://snips.ai/")[Snips]],
  dates: dates-helper(start-date: "Jan 2016", end-date: "Sep 2017"),
)

#link("https://www.wired.com/story/snips-smartphone-ai/")[Keyboard extension] – system-wide iOS keyboard suggesting information from the Snips Personal Knowledge Graph.
- Integrated email, calendar, and contacts for real-time context as the user typed.
- Developed a binary-encoded language model for auto-completion and next-word prediction; loaded in milliseconds.

_Snips Platform – Labs_ - prototyped natural language parsers and voice assistants on iOS.
- Built iOS voice assistant handling contextual queries (e.g. "Order cab to restaurant I went to last week.") via CKY parsing.
- Built query gap-filling engine for incomplete voice queries (e.g. "Which restaurant? *A* or *B*?").
- Prototyped voice UIs for embedded devices (speakers, appliances).

#chiline()


#grid(
  columns: (82%, 18%),
  gutter: 2%,
  [
    #work(
      title: "Co-Founder & CEO",
      location: [Cambridge, UK],
      company: "Blue Tatami",
      dates: dates-helper(start-date: "2014", end-date: "2016"),
    )
    Co-founded Blue Tatami, an iOS personal productivity startup.
    - Designed and shipped Dodeka, a 12-hour watch-face calendar app, from scratch.
    - Grew to *6,000+* users with no paid advertising.
  ],
  [#image("dodeka/screenshot_old.png")],
)

#chiline()

== Projects

// #let supercombinators_gh = "https://github.com/superlopuh/SuperCombinators"
// #let supercombinators_medium = "https://medium.com/snips-ai/supercombinators-a-swifty-parser-combinator-framework-3eccd578d9e2"

// #project(
//   role: "Author",
//   name: [
//     #link(supercombinators_gh)[SuperCombinators] |
//     #link(supercombinators_medium)[Article]],
//   dates: "2017"
// )
// A Parser Combinator library that leverages Swift's generics

#let sdp_gh = "https://github.com/superlopuh/SDP-swift"
#let sdp_medium = "https://medium.com/@superlopuh/raspberry-pi-ios-communication-in-bluetooth-c7599e257f2"

2017:
#link(sdp_gh)[Simple Datagram Protocol] |
#link(sdp_medium)[Article] --
Bypassed MFi restrictions by using BTLE to configure Raspberry Pis from iOS.

2015:
#link("https://github.com/superlopuh/bioswift")[BioSwift] --
First open-source framework in Swift to handle gene data.

#chiline()

== Presentations

#link("https://www.youtube.com/watch?v=YJIKr1DoUCQ")[
  2023 EuroLLVM - Prototyping MLIR in Python
]

#link("https://www.youtube.com/watch?v=W4094V3Je8A&t=1s")[
  2023 LLVM Dev Mtg - Compiler backend design with MLIR
]

#link("https://www.youtube.com/watch?v=XnRZA1pz7iw")[
  2024 EuroLLVM - Teaching MLIR concepts to undergraduate students
]

#link("https://www.youtube.com/watch?v=RSTjn_wA16A")[
  2024 LLVM Dev Mtg - Quidditch: An End-to-End Deep Learning Compiler for Occamy using IREE & xDSL
]

== Teaching

Taught sessions introducing MLIR at the
#link("https://sites.google.com/view/mlirwinterschoolparis2025/home")[2025 MLIR Winter School],
#link("https://mlir-school.github.io/summer-2025/")[2025 MLIR Summer School].

#chiline()

== Skills and Awards
- *Programming Languages*: Python, Swift, Objective-C, C/C++, JavaScript/TypeScript, Assembly
- *Languages*: Fluent in English, Russian, French
