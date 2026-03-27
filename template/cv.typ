#import "@preview/neat-cv:0.6.2": (
  contact-info, cv, email-link, entry, item-pills, item-with-level,
  publications, side, social-links,
)

#set text(lang: "en")  // Change to display date in your language

#show: cv.with(
  author: (
    firstname: "Bui Truong",
    lastname: "Giang",
    email: "giang.buitruong.cs@gmail.com",
    address: [Ho Chi Minh City, Vietnam],
    phone: "0397357000",
    position: ("Software Engineer", "AI & Data Research"),
    // website: "https://docbrownlabs.com",
    // twitter: "docbrown1955",
    // mastodon: "@docbrown@sciences.social",
    // matrix: "",
    github: "ghibli613",
    // gitlab: "",
    linkedin: "ghibli613",
    // researchgate: "",
    // scholar: "",
    // orcid: "",
    // custom-links: (
    //   (
    //     icon-name: "car", // Font Awesome icon name
    //     label: "DeLorean Time Machine",
    //     url: "https://en.wikipedia.org/wiki/DeLorean_time_machine",
    //   ),
    //   (
    //     label: "Back to the Future",
    //     url: "https://www.backtothefuture.com/",
    //   ),
    // ),
  ),
  profile-picture: image("profile.png"),
  accent-color: rgb("#4682b4"),
  // font-color: rgb("#333333"),
  header-color: rgb("#35414d"),
  // date: auto,
  // heading-font: "Fira Sans",
  // body-font: ("Noto Sans", "Roboto"),
  body-font-size: 10.2pt,
  // paper-size: "us-letter",
  // side-width: 4cm,
  // gdpr: false,
  // footer: auto,
)


#side[
  = About me
  Computer Vision Engineer with hands-on experience building scene graph generation and anomaly detection models from image and video data. Skilled in deep learning pipelines and GPU-accelerated experimentation, currently seeking roles focused on practical computer vision systems.

  = Interests
  - Software Development
  - Machine Learning
  - Computer Vision

  = Contact
  #contact-info()

  = Personal

  #social-links()

  = Languages
  #item-with-level("Vietnamese", 5, subtitle: "Native")
  #item-with-level("English", 3, subtitle: "Intermediate")

  = Other Skills
  #item-pills((
    "Critical Thinking",
    "Communication"
  ))

  = Certifications
  - IELTS Academic (2023)
  - Competitive Programming (2024)
  - Machine Learning (2022)
]

= Education

#entry(
  title: "Master's Degree",
  date: "2023 - Present",
  institution: "Ho Chi Minh City University of Science",
  location: "Ho Chi Minh City, Vietnam",
)[
  - Field: Computer Science
]

#entry(
  title: "Bachelor's Degree",
  date: "2019 - 2023",
  institution: "Ho Chi Minh City University of Science",
  location: "Ho Chi Minh City, Vietnam",
)[
  - Field: Computer Science
  - GPA: 8.34/10
]

= Professional Experience

#entry(
  title: "Associate Software Engineer",
  date: "03/2024 - Present",
  institution: "OPSWAT Inc.",
  location: "Ho Chi Minh City, Vietnam",
)[
  - Built and maintained internal vulnerability management and patching tools that automated assessment and reporting workflows, while integrating data from multiple sources and dynamic feeds to support timely, accurate, and secure update delivery.
  - Strengthened product security by analyzing CVE data to assess vulnerability impact, developing knowledge graph features for vulnerability management, and contributing to file-based detection initiatives that expanded product security capabilities.
  - Improved platform compatibility and customer outcomes by troubleshooting vulnerability management and patching issues across multiple environments, collaborating on fixes that increased reliability and streamlined issue resolution.
]

#entry(
  title: "Security Software Engineer Intern",
  date: "07/2023 - 12/2023",
  institution: "Fossil Group",
  location: "Ho Chi Minh City, Vietnam",
)[
  - Monitored and assessed cloud vulnerabilities using third-party security tools, helping identify, track, and prioritize potential risks across the environment while supporting ongoing security visibility and remediation efforts.
  - Built reconnaissance tools and researched modern attack techniques and defensive strategies to improve threat detection, strengthen security awareness, and support more proactive security engineering practices.
]

= Projects

#entry(
  title: "Scene graph generation for image understanding",
  date: "2025",
  institution: "Ho Chi Minh City University of Science",
  location: "Ho Chi Minh City, Vietnam",
)[
  - Forked and substantially extended a scene graph benchmark to support practical image understanding workflows, refining data handling, training configuration, and inference utilities so experiments could be reproduced reliably across multiple model variants.
  - Diagnosed and fixed codebase issues while integrating updated dependencies for newer deep learning stacks, improving long-term maintainability and reducing setup friction for subsequent research iterations; GitHub: #link("https://github.com/ghibli613/Scene-Graph-Benchmark")
]

#entry(
  title: "Graph generation for anomalous detection",
  date: "2025",
  institution: "Ho Chi Minh City University of Science",
  location: "Ho Chi Minh City, Vietnam",
)[
  - Implemented a graph generation backbone for anomaly detection on scene graphs extracted from video sequences, building and evaluating an end-to-end pipeline that connected representation learning with anomaly scoring in a consistent experimental setup.
  - Performed error analysis on baseline results and proposed concrete improvement directions, including targeted data augmentation strategies, transfer learning from related tasks, and structured hyperparameter optimization to improve detection robustness; GitHub: #link("https://github.com/Halsey77/usggen")
]

// #colbreak()

// = Talks

// #entry(
//   title: "From DeLorean to Locomotive: Engineering Time Machines",
//   date: "1991",
//   institution: "Society of Inventors Annual Meeting",
//   location: "San Francisco, CA, USA",
//   "Panelist on the evolution of time travel technology.",
// )

// #entry(
//   title: "Paradoxes and Causality: Lessons from Time Travel",
//   date: "1986",
//   institution: "World Science Congress",
//   location: "London, UK",
//   "Invited talk on managing paradoxes and causality in theoretical physics.",
// )

// #entry(
//   title: "The Flux Capacitor: A New Era in Temporal Mechanics",
//   date: "1985",
//   institution: "International Physics Symposium",
//   location: "Geneva, Switzerland",
//   "Keynote on the invention and implications of the flux capacitor.",
// )

// = Publications

// #publications(yaml("publications.yml"), highlight-authors: (
//   "Brown, Emmett",
//   "Brown, Emmett Lathrop",
// ))

// = References

// #entry(
//   title: "Marty McFly",
//   institution: "Musician & Time Traveler",
//   location: "Hill Valley, CA, USA",
//   [
//     Long-term collaborator and field assistant in temporal experiments.\
//     Contact: #email-link("marty.mcfly@hillvalley.com")
//   ],
// )

// #entry(
//   title: "Clara Clayton",
//   institution: "Science Educator",
//   location: "Hill Valley, CA, USA",
//   [
//     Advisor on science communication and educational outreach.\
//     Contact: #email-link("clara.clayton@hillvalley.edu")
//   ],
// )
