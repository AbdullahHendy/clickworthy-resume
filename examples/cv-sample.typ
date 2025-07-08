#import "@local/clickworthy-resume:0.1.0": *

// Personal Information
#let name = "Dr. Alex Morgan"
#let email = "alex.morgan@example.com"
#let github = "github.com/alexm-dev"
#let linkedin = "linkedin.com/in/alex-morgan"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "San Francisco, CA"

// Professional Summary
#let summary = "Senior systems engineer and technology leader with over two decades of experience architecting large-scale embedded systems, real-time signal processing pipelines, and fault-tolerant platforms. Proven record in driving research-led innovation into production, mentoring engineering teams, and publishing peer-reviewed work in top-tier venues."

// Resume configuration
#let theme = rgb("#bb51d8")
#let font = "New Computer Modern"
#let fontSize = 11pt
#let lang = "en"
#let margin = (
  top: 1cm,
  bottom: 0cm,
  left: 1cm,
  right: 1cm,
)

#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  summary: summary,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

= Skills
#skills((
  ("Expertise", (
    [Distributed Systems],
    [Real-Time Operating Systems],
    [Signal Processing],
    [Embedded Security],
    [FPGA Architectures],
    [System-on-Chip Design],
    [Software Reliability],
    [Technical Leadership],
  )),
  ("Software", (
    [C/C++],
    [Rust],
    [SystemVerilog],
    [Matlab],
    [Linux Kernel],
    [Docker],
    [Kubernetes],
    [Jenkins],
    [gRPC],
    [Git],
    [Yocto Project],
  )),
  ("Languages", (
    [Python],
    [C/C++],
    [Rust],
    [Shell],
    [SystemVerilog],
    [VHDL],
  )),
))

// Experience
= Experience
#exp(
  title: "Lead FPGA Engineer",
  organization: "Northwest Embedded Systems",
  date: "2012 - 2022",
  location: "San Jose, CA",
  details: [
    - Led architecture and design of a secure FPGA-based communications platform for aerospace clients.
    - Built a distributed sensor fusion system used in industrial robotics with >99.99% reliability.
    - Mentored a cross-functional team of 12 engineers, fostering internal leadership and publishing culture.
    - Drove internal R&D to productization cycle for real-time embedded analytics engine.
    - Co-authored 3 internal patents on low-power data routing and compression techniques.
  ]
)

#exp(
  title: "Senior Systems Engineer",
  organization: "Photonix Technologies",
  date: "2006 - 2012",
  location: "Mountain View, CA",
  details: [
    - Designed a firmware update system for remote industrial devices deployed in volatile environments.
    - Developed mixed-signal driver modules interfacing with custom ASICs and microcontrollers.
    - Improved inter-device communication protocols, reducing latency by 35% across product lines.
  ]
)

#exp(
  title: "Embedded Software Engineer",
  organization: "MicroNova Inc.",
  date: "2001 - 2006",
  location: "Austin, TX",
  details: [
    - Delivered firmware for low-latency DSP filters used in medical and automotive devices.
    - Ported real-time schedulers to custom embedded targets using bare-metal C.
  ]
)

// Publications
= Publications
#pub(
  authors: (
    "Ravi Gupta",
    "Alex Morgan",
    "Elena Clark",
    "Daniel Yoon",
  ),
  bold-author: "Alex Morgan",
  title: "Collaborative Load Balancing for Edge Robotics Swarms",
  venue: "IEEE International Conference on Robotics and Automation",
  year: "2022",
  doi-link: "doi.org/10.1109/ICRA.2022.456789",
  style: "cv",
)

#pub(
  authors: (
    "Sophia Lee",
    "Benjamin Reed",
    "Alex Morgan",
    "Martin Perez",
  ),
  bold-author: "Alex Morgan",
  title: "Real-Time Graph Partitioning for FPGA-Accelerated Workflows",
  venue: "ACM Symposium on Cloud Computing",
  year: "2021",
  doi-link: "doi.org/10.1145/SOCC.2021.987654",
  style: "cv",
)

#pub(
  authors: (
    "Michael Sun",
    "Alex Morgan",
    "Sarah Chen",
    "Kevin Zhao",
  ),
  bold-author: "Alex Morgan",
  title: "Multilayer Cache Design for Streaming Signal Applications",
  venue: "DATE",
  year: "2020",
  doi-link: "doi.org/10.1234/date.2020.001",
  style: "cv",
)

#pub(
  authors: (
    "Alex Morgan",
    "Ravi Gupta",
  ),
  bold-author: "Alex Morgan",
  title: "Scalable Real-Time Telemetry Aggregation for Distributed Robotics",
  venue: "IEEE Real-Time Systems Symposium",
  year: "2021",
  doi-link: "doi.org/10.1109/RTSS.2021.001",
  style: "cv",
)

#pub(
  authors: (
    "Alex Morgan",
    "Elena Clark",
    "Daniel Yoon",
  ),
  bold-author: "Alex Morgan",
  title: "Efficient FPGA Scheduling for Edge Inference in Multi-Sensor Networks",
  venue: "ACM TECS",
  year: "2019",
  doi-link: "doi.org/10.1145/3369987",
  style: "cv",
)

#pub(
  authors: (
    "Alex Morgan",
  ),
  bold-author: "Alex Morgan",
  title: "Hardware-Aware Compression Techniques for Real-Time Audio",
  venue: "Design Automation Conference (DAC)",
  year: "2017",
  doi-link: "doi.org/10.1145/3086974",
  extra: "Invited Talk",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Alex Morgan",
    "Taylor Chen",
    "Emily Zhang",
  ),
  bold-author: "Jordan Michaels",
  title: "Robust Distributed Scheduling in Adversarial Edge Environments",
  venue: "ACM MobiCom",
  year: "2025",
  doi-link: "doi.org/10.1145/9999999.9999999",
  extra: "To appear",
  style: "cv",
)

// Page break for readability
#pagebreak()

#pub(
  authors: (
    "Taylor Chen",
    "Emily Zhang",
    "Jordan Michaels",
    "Alex Morgan",
  ),
  bold-author: "Jordan Michaels",
  title: "Resource-Conscious Model Compression for Embedded Speech Translation",
  venue: "NeurIPS",
  year: "2024",
  doi-link: "doi.org/10.48550/arXiv.2406.00123",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Alice Smith",
    "Nina Lee",
    "Zhao Wei",
  ),
  bold-author: "Jordan Michaels",
  title: "Microcontroller-Guided Perception for Low-Power Robots",
  venue: "IEEE IROS",
  year: "2024",
  doi-link: "doi.org/10.1109/IROS.2024.1234567",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Taylor Chen",
    "Alex Morgan",
    "Ravi Patel",
  ),
  bold-author: "Jordan Michaels",
  title: "Cross-Domain Feature Alignment in Multilingual Speech Systems",
  venue: "ACL",
  year: "2023",
  doi-link: "doi.org/10.18653/v1/2023.acl-long.123",
  extra: "Best Paper Award",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Emily Zhang",
    "Li Wei",
    "Connor Reeves",
  ),
  bold-author: "Jordan Michaels",
  title: "Streaming Neural Transducers for Real-Time AR Interfaces",
  venue: "ACM UIST",
  year: "2023",
  doi-link: "doi.org/10.1145/3612345.3619876",
  style: "cv",
)

#pub(
  authors: (
    "Alex Morgan",
    "Jordan Michaels",
    "Grace Huang",
    "Felix Yu",
  ),
  bold-author: "Jordan Michaels",
  title: "FPGA-Based Co-Processors for Scene Graph Parsing",
  venue: "DATE",
  year: "2023",
  doi-link: "doi.org/10.23919/DATE.2023.1012345",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Anika Shah",
    "Carlos Martinez",
    "Yuna Takahashi",
  ),
  bold-author: "Jordan Michaels",
  title: "Composable AI Pipelines for Onboard Robotics Systems",
  venue: "IEEE Robotics and Automation Letters (RA-L)",
  year: "2022",
  doi-link: "doi.org/10.1109/LRA.2022.3156789",
  style: "cv",
)

#pub(
  authors: (
    "Ravi Patel",
    "Jordan Michaels",
    "Alex Morgan",
    "Mei Tan",
  ),
  bold-author: "Jordan Michaels",
  title: "Latency-Aware Learning in Networked Control Systems",
  venue: "IEEE Real-Time Systems Symposium (RTSS)",
  year: "2022",
  doi-link: "doi.org/10.1109/RTSS.2022.00123",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Eva Nguyen",
    "Leo Davis",
    "Sara Youssef",
  ),
  bold-author: "Jordan Michaels",
  title: "Augmented Reality Interfaces for Industrial Inspection",
  venue: "IEEE ISMAR",
  year: "2021",
  doi-link: "doi.org/10.1109/ISMAR.2021.01234",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "James Wu",
    "Alice Kim",
    "Mira Ali",
  ),
  bold-author: "Jordan Michaels",
  title: "Hardware-Aware Neural Architecture Search for AR Glasses",
  venue: "ACM SenSys",
  year: "2021",
  doi-link: "doi.org/10.1145/12345678.12345678",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Ling Zhao",
    "Kara Davis",
    "Noah Brooks",
  ),
  bold-author: "Jordan Michaels",
  title: "Sensor Fusion in Fog Robotics for Environmental Mapping",
  venue: "ICRA",
  year: "2020",
  doi-link: "doi.org/10.1109/ICRA.2020.9123456",
  style: "cv",
)

#pub(
  authors: (
    "Amira Khan",
    "Jordan Michaels",
    "Miguel Torres",
    "Yuki Tanaka",
  ),
  bold-author: "Jordan Michaels",
  title: "An Open Framework for Real-Time AR Audio Feedback",
  venue: "ACM CHI",
  year: "2020",
  doi-link: "doi.org/10.1145/3313831.3376611",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Alex Morgan",
    "Sarah Lee",
    "David Sun",
  ),
  bold-author: "Jordan Michaels",
  title: "Compiler-Assisted Acceleration of ML Workloads on FPGAs",
  venue: "USENIX ATC",
  year: "2019",
  doi-link: "doi.org/10.5555/3338888.3338899",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Peter Zhao",
    "Emily Ross",
    "Kai Long",
  ),
  bold-author: "Jordan Michaels",
  title: "A Runtime for Modular Computer Vision on Embedded Platforms",
  venue: "IEEE ICCV Workshops",
  year: "2019",
  doi-link: "doi.org/10.1109/ICCVW.2019.00123",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Natalie Roy",
    "Jason Kim",
    "Daria Pavlova",
  ),
  bold-author: "Jordan Michaels",
  title: "Near-Sensor Processing for Battery-Limited IoT Vision",
  venue: "ACM/IEEE IPSN",
  year: "2018",
  doi-link: "doi.org/10.1145/3302506.3302525",
  style: "cv",
)

#pub(
  authors: (
    "Jordan Michaels",
    "Emily Zhang",
    "John Carter",
    "Sarah Liang",
  ),
  bold-author: "Jordan Michaels",
  title: "Efficient Multimodal Interfaces for Outdoor AR",
  venue: "ACM UbiComp",
  year: "2018",
  doi-link: "doi.org/10.1145/3267305.3274163",
  style: "cv",
)

// Education
= Education
#edu(
  institution: "University of California, Berkeley",
  date: "1996 - 2001",
  location: "Berkeley, CA",
  degrees: (
    ("Ph.D.", "Electrical Engineering and Computer Sciences"),
  ),
  extra: "Advisor: Prof. Margaret Wang",
)

#edu(
  institution: "University of California, Berkeley",
  date: "1992 - 1996",
  location: "Berkeley, CA",
  degrees: (
    ("B.S.", "Electrical Engineering"),
  ),
  gpa: "3.92",
  extra: "Graduated with Honors (Summa Cum Laude)",
)
