class Course < ApplicationRecord

  validates_presence_of :name, :category


# COURSE_OPTIONS = {

#   'RAIL' => [
#     { name: "Industry Common Induction (ICI) with LU Endorsement",
#       description: "This course is mandatory for anyone working on the London Underground network. It is a one-day course that provides an overview of health and safety in the rail industry."},
#     { name: "Rail Saw and Impact Wrench",
#       description: "This course is designed for anyone who needs to use a rail saw or impact wrench. It covers the safe use of these tools and the relevant health and safety regulations."},
#     { name: "Safe use of Trolley Equipment",
#       description: "This course is designed for anyone who needs to use trolley equipment on the railway. It covers the safe use of trolley equipment and the relevant health and safety regulations."},
#     { name: "Catscan training (RD8000,EASYCAT, Cat4)",
#       description: "This course is designed for anyone who needs to use a catscan on the railway. It covers the safe use of catscan equipment and the relevant health and safety regulations."}
#   ],

#   'CONSTRUCTION' => [
#     { name: "Abrasive Wheels",
#       description: "This course is designed for anyone who needs to use abrasive wheels. It covers the safe use of abrasive wheels and the relevant health and safety regulations."
#     },

#     { name: "Risk Assessment Level 3",
#       description: "This course is designed for anyone who needs to carry out risk assessments. It covers the legal requirements for risk assessments and how to identify hazards and assess risks."
#     },

#     { name: "Site Safety Plus - Health & Safety Awareness",
#       description: "This course is designed for anyone who needs to work on a construction site. It covers the basic health and safety requirements for construction work."
#     }
#     ,
#     { name: "Slinger",
#       description: "This course is designed for anyone who needs to work as a slinger. It covers the safe use of slinging equipment and the relevant health and safety regulations."
#     }
#     ,
#     { name: "Small Tools - Power Tools",
#       description: "This course is designed for anyone who needs to use power tools. It covers the safe use of power tools and the relevant health and safety regulations."
#     }
#     ,
#     { name: "Small Tools - De-veg Plant",
#       description: "This course is designed for anyone who needs to use de-veg plant equipment. It covers the safe use of de-veg plant equipment and the relevant health and safety regulations."
#     }
#     ,
#     { name: "Manual Handling",
#       description: "This course is designed for anyone who needs to carry out manual handling tasks. It covers the safe lifting and handling of objects and the relevant health and safety regulations."
#     }
#     ,
#     { name: "Asbestos Awareness",
#       description: "This course is designed for anyone who needs to work in an environment where asbestos is present. It covers the risks associated with asbestos exposure and how to work safely in these environments."
#     }
#     ,
#     { name: "PASMA - Mobile Access Tower for Users",
#       description: "This course is designed for anyone who needs to work at height using mobile access towers. It covers the safe use of mobile access towers and the relevant health and safety regulations."
#     }
#     ,
#     { name: "IPAF - Mobile Elevating Work Platforms",
#       description: "This course is designed for anyone who needs to work at height using mobile elevating work platforms. It covers the safe use of mobile elevating work platforms and the relevant health and safety regulations."
#     }
#     ,
#     { name: "Working at Heights",
#       description: "This course is designed for anyone who needs to work at height. It covers the risks associated with working at height and how to work safely in these environments."
#     }
#     ,
#     { name: "Working in Confined Spaces",
#       description: "This course is designed for anyone who needs to work in confined spaces. It covers the risks associated with working in confined spaces and how to work safely in these environments."
#     }

#   ],

#   'MEDICALS' => [
#     { name: "Diabeties Emergency",
#       description: "This course is designed for anyone who needs to provide emergency care for diabetics. It covers the signs and symptoms of diabetic emergencies and how to provide first aid."
#     }
#     ,
#     { name: "NR Medical",
#       description: "This course is designed for anyone who needs to pass the Network Rail medical assessment. It covers the medical requirements for working on the railway."
#     }
#     ,
#     { name: "NR D&A",
#       description: "This course is designed for anyone who needs to pass the Network Rail drugs and alcohol test. It covers the legal requirements for drugs and alcohol testing and how to prepare for the test."
#     }
#     ,
#     { name: "NR Medical & D&A",
#       description: "This course is designed for anyone who needs to pass both the Network Rail medical assessment and drugs and alcohol test. It covers the medical requirements for working on the railway and the legal requirements for drugs and alcohol testing."
#     }
#     ,
#     { name: "Randoms D&A",
#       description: "This course is designed for anyone who needs to pass random drugs and alcohol testing. It covers the legal requirements for random drugs and alcohol testing and how to prepare for the test."
#     }
#     ,
#     { name: "TFL Medical (LUL)",
#       description: "This course is designed for anyone who needs to pass the Transport for London medical assessment. It covers the medical requirements for working on the London Underground network."
#     }
#     ,
#     { name: "TFL DAMPS/D&A (LUL)",
#       description: "This course is designed for anyone who needs to pass the Transport for London drugs and alcohol test. It covers the legal requirements for drugs and alcohol testing and how to prepare for the test."
#     }
#     ,
#     { name: "TFL Medical and D&A (LUL)",
#       description: "This course is designed for anyone who needs to pass both the Transport for London medical assessment and drugs and alcohol test. It covers the medical requirements for working on the London Underground network and the legal requirements for drugs and alcohol testing."
#     }
#     ,
#     { name: "Safety Critical for Const/Fit for Work Medical Working at Heights Medical",
#       description: "This course is designed for anyone who needs to pass the safety critical medical assessment and working at heights medical assessment. It covers the medical requirements for working in safety critical roles and at height."
#     }
#     ,
#     { name: "Safety Critical",
#       description: "This course is designed for anyone who needs to pass the safety critical medical assessment. It covers the medical requirements for working in safety critical roles."
#     }
#     ,
#     { name: "Spirometry (Lung Function test)",
#       description: "This course is designed for anyone who needs to pass a spirometry test. It covers the procedure for performing a spirometry test and how to interpret the results."
#     }
#     ,
#     { name: "Audiometry (hearing test)",
#       description: "This course is designed for anyone who needs to pass an audiometry test. It covers the procedure for performing an audiometry test and how to interpret the results."
#     }
#     ,
#     { name: "Health and Wellbeing Workshop (Cholesterol, Blood Pressure, Body Mass Index, Glucose)",
#       description: "This course is designed for anyone who wants to improve their health and wellbeing. It covers the importance of cholesterol, blood pressure, body mass index, and glucose levels for overall health."
#     }

#   ]

# }

COURSE_OPTIONS = {
  'RAIL' => [
 {
      name: "Industry Common Induction (ICI) with LU Endorsement",
      description: "This course is mandatory for anyone working on the London Underground network. It is a one-day course that provides an overview of health and safety in the rail industry.\n\n" \
                    "Overview\n\n" \
                    "Introduction\n\n" \
                    "The Industry Common Induction (ICI) is designed to equip personnel with essential health and safety knowledge for working across various construction sites, rail depots, and station maintenance environments. This induction program, developed by Network Rail in collaboration with the Infrastructure Safety Liaison Group (ISLG) and the Rail Infrastructure Assurance Group (RIAG), addresses the universal safety protocols and risks encountered throughout the rail industry, regardless of the specific role or site type.\n\n" \
                    "Prior to attending the ICI Assessment, candidates are advised to complete the ICI E-Learning module. It is the sponsor’s responsibility to set up the login credentials for the E-Learning platform and register the candidate for the ICI.\n\n" \
                    "Assessment Details:\n\n" \
                    "- **Passing Criteria:** Candidates must achieve a minimum score of 80% to pass.\n" \
                    "- **Certification:** Successful candidates will be registered in the Sentinel system.\n" \
                    "- **Session Timing:** 09:00 - 10:00\n\n" \
                    "Completion of this course also qualifies candidates for the ICI LU competence certification."
    },

    { name: "Rail Saw and Impact Wrench",
      description: "This course is designed for anyone who needs to use a rail saw or impact wrench. It covers the safe use of these tools and the relevant health and safety regulations." },
    { name: "Safe use of Trolley Equipment",
      description: "This course is designed for anyone who needs to use trolley equipment on the railway. It covers the safe use of trolley equipment and the relevant health and safety regulations." },
    { name: "Catscan training (RD8000,EASYCAT, Cat4)",
      description: "This course is designed for anyone who needs to use a catscan on the railway. It covers the safe use of catscan equipment and the relevant health and safety regulations." }
  ],

  'CONSTRUCTION' => [
    { name: "Abrasive Wheels",
      description: " <p><strong>This course is designed for anyone who needs to use abrasive wheels. It covers the safe use of abrasive wheels and the relevant health and safety regulations.</strong></p><p>\r\n
            <em> Course Requirements for Trainees</em></p><p>\r\n    <strong>    Minimum Age</strong>\r\n
      Participants must be at least 18 years old.</p><p>\r\n<strong>
      Health and Safety</strong>\r\n
      Trainees should be in good health and able to handle the physical demands of the course. If there are specific health concerns, a pre-course medical assessment may be required.</p><p>\r\n
      <strong>Personal Protective Equipment (PPE)</strong>\r\n
      Trainees must bring their own PPE, including:\r\n
      Safety glasses or goggles\r\n
      Protective gloves\r\n
                                  Safety boots with steel toe caps\r\n
      Hearing protection (earplugs or earmuffs)</p><p>\r\n
      <strong>    Identification</strong>\r\n
      A valid photo ID (e.g., passport, driving license) must be presented on the day of the course.</p><p>\r\n<strong>
      Punctuality</strong>\r\n        Trainees should arrive at the course location promptly to ensure a smooth start and to receive the full benefit of the training.</p>"
  },
    { name: "Risk Assessment Level 3",
      description: "This course is designed for anyone who needs to carry out risk assessments. It covers the legal requirements for risk assessments and how to identify hazards and assess risks." },
    { name: "Site Safety Plus - Health & Safety Awareness",
      description: "This course is designed for anyone who needs to work on a construction site. It covers the basic health and safety requirements for construction work." },
    { name: "Slinger",
      description: "This course is designed for anyone who needs to work as a slinger. It covers the safe use of slinging equipment and the relevant health and safety regulations." },
    { name: "Small Tools - Power Tools",
      description: "This course is designed for anyone who needs to use power tools. It covers the safe use of power tools and the relevant health and safety regulations." },
    { name: "Small Tools - De-veg Plant",
      description: "This course is designed for anyone who needs to use de-veg plant equipment. It covers the safe use of de-veg plant equipment and the relevant health and safety regulations." },
    { name: "Manual Handling",
      description: "This course is designed for anyone who needs to carry out manual handling tasks. It covers the safe lifting and handling of objects and the relevant health and safety regulations." },
    { name: "Asbestos Awareness",
      description: "This course is designed for anyone who needs to work in an environment where asbestos is present. It covers the risks associated with asbestos exposure and how to work safely in these environments." },
    { name: "PASMA - Mobile Access Tower for Users",
      description: "This course is designed for anyone who needs to work at height using mobile access towers. It covers the safe use of mobile access towers and the relevant health and safety regulations." },
    { name: "IPAF - Mobile Elevating Work Platforms",
      description: "This course is designed for anyone who needs to work at height using mobile elevating work platforms. It covers the safe use of mobile elevating work platforms and the relevant health and safety regulations." },
    { name: "Working at Heights",
      description: "This course is designed for anyone who needs to work at height. It covers the risks associated with working at height and how to work safely in these environments." },
    { name: "Working in Confined Spaces",
      description: "This course is designed for anyone who needs to work in confined spaces. It covers the risks associated with working in confined spaces and how to work safely in these environments." }
  ],

  'MEDICALS' => [
    { name: "Diabeties Emergency",
      description: "This course is designed for anyone who needs to provide emergency care for diabetics. It covers the signs and symptoms of diabetic emergencies and how to provide first aid." },
    { name: "NR Medical",
      description: "This course is designed for anyone who needs to pass the Network Rail medical assessment. It covers the medical requirements for working on the railway." },
    { name: "NR D&A",
      description: "This course is designed for anyone who needs to pass the Network Rail drugs and alcohol test. It covers the legal requirements for drugs and alcohol testing and how to prepare for the test." },
    { name: "NR Medical & D&A",
      description: "This course is designed for anyone who needs to pass both the Network Rail medical assessment and drugs and alcohol test. It covers the medical requirements for working on the railway and the legal requirements for drugs and alcohol testing." },
    { name: "Randoms D&A",
      description: "This course is designed for anyone who needs to pass random drugs and alcohol testing. It covers the legal requirements for random drugs and alcohol testing and how to prepare for the test." },
    { name: "TFL Medical (LUL)",
      description: "This course is designed for anyone who needs to pass the Transport for London medical assessment. It covers the medical requirements for working on the London Underground network." },
    { name: "TFL DAMPS/D&A (LUL)",
      description: "This course is designed for anyone who needs to pass the Transport for London drugs and alcohol test. It covers the legal requirements for drugs and alcohol testing and how to prepare for the test." },
    { name: "TFL Medical and D&A (LUL)",
      description: "This course is designed for anyone who needs to pass both the Transport for London medical assessment and drugs and alcohol test. It covers the medical requirements for working on the London Underground network and the legal requirements for drugs and alcohol testing." },
    { name: "Safety Critical for Const/Fit for Work Medical Working at Heights Medical",
      description: "This course is designed for anyone who needs to pass the safety critical medical assessment and working at heights medical assessment. It covers the medical requirements for working in safety critical roles and at height." },
    { name: "Safety Critical",
      description: "This course is designed for anyone who needs to pass the safety critical medical assessment. It covers the medical requirements for working in safety critical roles." },
    { name: "Spirometry (Lung Function test)",
      description: "This course is designed for anyone who needs to pass a spirometry test. It covers the procedure for performing a spirometry test and how to interpret the results." },
    { name: "Audiometry (hearing test)",
      description: "This course is designed for anyone who needs to pass an audiometry test. It covers the procedure for performing an audiometry test and how to interpret the results." },
    { name: "Health and Wellbeing Workshop (Cholesterol, Blood Pressure, Body Mass Index, Glucose)",
      description: "This course is designed for anyone who wants to improve their health and wellbeing. It covers the importance of cholesterol, blood pressure, body mass index, and glucose levels for overall health." }
  ]
}




  def self.course_options_as_json
    COURSE_OPTIONS.to_json
  end

end
