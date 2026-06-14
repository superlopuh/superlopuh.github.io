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
 * #project(dates: "", name: "", role: "", url: "")
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
Led the development of a novel MLIR-based linear algebra micro-kernel backend that targets ETH's Snitch Core, yielding 95% FPU utilization and 94% of theoretical maximum throughput for our chosen kernels. Neural networks compiled via this micro-kernel outperform the state of the art by >20x.

#link("https://dl.acm.org/doi/abs/10.1145/3696443.3708945")[Sidekick compilation with xDSL]
Led the development of #link("https://xdsl.dev/")[xDSL], a more approachable and hackable compiler framework.

// - Developed a novel MLIR-based extensible interpreter, which I presented at the 2023 MLIR developer meeting.
// - Mentored a number of undergraduate students for their dissertation work and internships, one of whom won silver at the #link("https://src.acm.org/winners/2024")[CGO 2024 student research competition].
// Publications:

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
  dates: dates-helper(start-date: "September 2021", end-date: "January 2022"),
)
Led development of a platform that enabled third parties to employ Web3 tools, NFTs, and other blockchain technology to encourage positive behavior in online fan communities.
Spearheaded the engineering team, developing a minimal viable product, identifying key features and coordinating efforts.

#chiline()

#work(
  title: "Software Engineer",
  location: "Cupertino, CA",
  company: "Apple",
  dates: dates-helper(start-date: "March 2018", end-date: "September 2021"),
)

#link("https://www.macrumors.com/guide/photos/")[Curated Library] – a novel iOS 13 feature providing user photos in a curated perspective free of memes, screenshots, and duplicate images, deployed to *over a billion devices*.
- Responsible for efficient calculation of the unique #link("https://sixcolors.com/post/2019/09/13-features-of-ios-13-photos/")[Years/Months/Days] display on the Curated Library page, leveraging date, time, and other metadata to provide a beautiful, clutter-free, display of the user's photo library.
- Carried out extensive performance and unit testing, building new profiling infrastructure in the process.
*Patent*: US20200356227A1 – *Curated Media Library*

#link("https://support.apple.com/en-gb/guide/iphone/iphd4f70e68f/18.0/ios/18.0")[On-disk graph] – a novel infrastructure component of Photos Memories.
Enabled numerous features, such as on-demand availability of all Memories, automatic song selection, and next memory suggestion.
- Implemented a graph database to represent Memories data, accommodating roughly 1,000 times more data than the previous representation.
- Led the migration of existing features to the new database, with minimal regressions, leading to a 9x reduction in testing time—from 1 hour and 30 minutes to 10 minutes.
- Added many new unit tests to ensure the continued high quality of this component of the infrastructure.

#link("https://www.youtube.com/watch?v=0TD96VTf0Xs&t=1402s")[Next memory suggestion] – a recommendation engine for the Memories interface that suggests new memories to watch
- Developed a novel recommendation engine for Memories, leveraging features of the current Memory, and the user's library.

#link("https://appleinsider.com/articles/21/06/07/memories-features-in-photos-app-gets-apple-music-integration-new-features-in-ios-15")[Integration of Apple Music into Memories] – a #link("https://support.apple.com/en-gb/118279")[feature] that lets users select any song from the Apple Music library to play in Memories.
- Required handling enormous data sets including over a billion users’ photo libraries and Apple Music’s 90 million song library.
- Led the feature extraction efforts to provide the recommendation engine with information from the Memories database to suggest appropriate music.
- Provided Swift mentoring to the team and offered guidance on the project's software architecture and design patterns.

#chiline()
#pagebreak()

#work(
  title: "iOS Engineer",
  location: [Paris, France],
  company: [#link("https://snips.ai/")[Snips]],
  dates: dates-helper(start-date: "January 2016", end-date: "September 2017"),
)

#link("https://www.wired.com/story/snips-smartphone-ai/")[Keyboard extension] – a cutting-edge tool leveraging the Snips Personal Knowledge Graph to suggest phrases from their personal database as they entered text throughout iOS.
- Created a software keyboard that interacted with supporting services (email, calendar, and contacts) to extract the necessary information as the user was typing.
- Developed a bespoke binary-encoded language model for auto-completion and next-word prediction that loaded in milliseconds.
// Results:
//  - Greatly shortened the amount of time users had to spend looking for information.
//  - Created a keyboard that was fully functional throughout the system and allowed users to search for specific data in their database.

_Snips Platform – Labs_ - prototyped natural language parsers and applications built on top of them.
- Built an interactive voice assistant on iOS, that could handle queries such as "Show me photos from the restaurants I went to last week" using CKY parsing.
- Built an interactive voice assistant engine that would fill in the gaps in user's queries.
- Developed prototypes for voice-activated gadgets such as speakers and coffee machines.

#chiline()

#work(
  title: "Cofounder & CEO",
  location: [Cambridge, UK],
  company: "Blue Tatami",
  dates: dates-helper(start-date: "2014", end-date: "2016"),
)

#grid(
  columns: (82%, 18%),
  gutter: 2%,
  [
    Blue Tatami was a startup developing personal productivity applications on iOS.
    We developed Dodeka, an iOS program for displaying calendar events on a 12-hour watch face.
    This program required a unique visualization designed from the ground up to show the current day's calendar events in the clearest way possible.
    - Developed the project's concept and wrote app from scratch
    - Introduced a unique personal productivity tool
    - Created innovative graphics and design features
    - Grew to *more than 6,000 users* with no advertising
  ],
  [#image("dodeka/screenshot_old.png")],
)

#chiline()

== Projects

#project(
  role: "Maintainer",
  name: [#link("https://xdsl.dev")[xDSL]],
  dates: dates-helper(start-date: "Jan 2023", end-date: "Present"),
)
xDSL is a pure Python re-implementation of MLIR that makes modern compiler development more productive, accessible, and fun.


// #project(
//   role: "Mentor",
//   name: "xdsl-gui",
//   dates: dates-helper(start-date: "September 2023", end-date: "March 2024"),
// )
// #TODO

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

#project(
  role: "Author",
  name: [
    #link(sdp_gh)[Simple Datagram Protocol] |
    #link(sdp_medium)[Article]],
  dates: "2017",
)
Worked around Apple's requirement for devices to have Made for iPhone certification to access Bluetooth, by using BTLE to transfer configuration data to Raspberry Pis instead.

#project(
  role: "Author",
  name: [#link("https://github.com/superlopuh/bioswift")[BioSwift]],
  dates: "2015",
)
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

Taught sessions introducting MLIR at the
#link("https://sites.google.com/view/mlirwinterschoolparis2025/home")[2025 MLIR Winter School],
#link("https://mlir-school.github.io/summer-2025/")[2025 MLIR Summer School].

#chiline()

== Skills and Awards
- *Programming Languages*: Python, Swift, Objective-C, C/C++, JavaScript/TypeScript, Assembly
- *Languages*: Fluent in English, Russian, French
