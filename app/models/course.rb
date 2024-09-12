class Course < ApplicationRecord

  validates_presence_of :name, :category

COURSE_OPTIONS = {
  'RAIL' => [
    { name: "Rail Saw and Impact Wrench",
     description: "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

      <p><em>Course Requirements for Delegates</em></p>

      <p><strong>Minimum Age</strong><br />
      Delegates must be at least 16 years of age.</p>

      <p><strong>Language Proficiency</strong><br />
      Must have sufficient command of English language, as detailed in Network Rail Company Specification NR/L2/CTM/021 (Competence & Training in Track Safety).</p>

      <p><strong>Special Needs</strong><br />
      Please advise of any special needs, such as dyslexia, in advance of the course.</p>

      <p><strong>Identification</strong><br />
      Must bring photo ID. For British Nationals, one of the following (original hard copy - not electronically) is required:
      <ul>
        <li>Current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card</li>
        <li>In-date and valid full driving licence</li>
        <li>In-date and valid UK Provisional Photo Card Driving Licence</li>
        <li>In-date and valid passport</li>
        <li>UK biometric ID Card/Residence Permit (BRP)</li>
        <li>Armed Forces Identity Card</li>
        <li>Proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card)</li>
        <li>N.I. Electoral Identity Card or a resident permit as per Home Office guidance</li>
      </ul>
      For Non-British Nationals, an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

      <p><strong>Personal Protective Equipment (PPE)</strong><br />
      Delegates must bring the following PPE:
      <ul>
        <li>Hard hat</li>
        <li>Orange Hi-Visibility clothing to RIS-3279-TOM standard</li>
        <li>Ear defenders</li>
        <li>Goggles</li>
        <li>Safety boots with full ankle and mid-sole protection</li>
        <li>Gloves</li>
      </ul> " },
    { name: "Track Trolley",
     description: "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

      <p><em>Course Requirements for Delegates</em></p>

      <p><strong>Minimum Age</strong><br />
      Delegates must be at least 16 years of age.</p>

      <p><strong>Language Proficiency</strong><br />
      Must have sufficient command of English language, as detailed in Network Rail Company Specification NR/L2/CTM/021 (Competence & Training in Track Safety).</p>

      <p><strong>Special Needs</strong><br />
      Please advise of any special needs, such as dyslexia, in advance of the course.</p>

      <p><strong>Identification</strong><br />
      Must bring photo ID. For British Nationals, one of the following (original hard copy - not electronically) is required:
      <ul>
        <li>Current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card</li>
        <li>In-date and valid full driving licence</li>
        <li>In-date and valid UK Provisional Photo Card Driving Licence</li>
        <li>In-date and valid passport</li>
        <li>UK biometric ID Card/Residence Permit (BRP)</li>
        <li>Armed Forces Identity Card</li>
        <li>Proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card)</li>
        <li>N.I. Electoral Identity Card or a resident permit as per Home Office guidance</li>
      </ul>
      For Non-British Nationals, an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

      <p><strong>Personal Protective Equipment (PPE)</strong><br />
      Delegates must bring the following PPE:
      <ul>
        <li>Hard hat</li>
        <li>Orange Hi-Visibility clothing to RIS-3279-TOM standard</li>
        <li>Ear defenders</li>
        <li>Goggles</li>
        <li>Safety boots with full ankle and mid-sole protection</li>
        <li>Gloves</li>
      </ul> "},
    { name: "Cat Scan (RD8000,EASYCAT, Cat4)",
     description: "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

      <p><em>Course Requirements for Delegates</em></p>

      <p><strong>Minimum Age</strong><br />
      Delegates must be at least 16 years of age.</p>

      <p><strong>Language Proficiency</strong><br />
      Must have sufficient command of English language, as detailed in Network Rail Company Specification NR/L2/CTM/021 (Competence & Training in Track Safety).</p>

      <p><strong>Special Needs</strong><br />
      Please advise of any special needs, such as dyslexia, in advance of the course.</p>

      <p><strong>Identification</strong><br />
      Must bring photo ID. For British Nationals, one of the following (original hard copy - not electronically) is required:
      <ul>
        <li>Current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card</li>
        <li>In-date and valid full driving licence</li>
        <li>In-date and valid UK Provisional Photo Card Driving Licence</li>
        <li>In-date and valid passport</li>
        <li>UK biometric ID Card/Residence Permit (BRP)</li>
        <li>Armed Forces Identity Card</li>
        <li>Proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card)</li>
        <li>N.I. Electoral Identity Card or a resident permit as per Home Office guidance</li>
      </ul>
      For Non-British Nationals, an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

      <p><strong>Personal Protective Equipment (PPE)</strong><br />
      Delegates must bring the following PPE:
      <ul>
        <li>Hard hat</li>
        <li>Orange Hi-Visibility clothing to RIS-3279-TOM standard</li>
        <li>Ear defenders</li>
        <li>Goggles</li>
        <li>Safety boots with full ankle and mid-sole protection</li>
        <li>Gloves</li>
      </ul> " }
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

    { name: "Banksman",
      description: "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

      <p><em>Course Requirements for Delegates</em></p>

      <p><strong>Minimum Age</strong><br />
      Delegates must be at least 16 years of age.</p>

      <p><strong>Language Proficiency</strong><br />
      Must have sufficient command of English language, as detailed in Network Rail Company Specification NR/L2/CTM/021 (Competence & Training in Track Safety).</p>

      <p><strong>Special Needs</strong><br />
      Please advise of any special needs, such as dyslexia, in advance of the course.</p>

      <p><strong>Identification</strong><br />
      Must bring photo ID. For British Nationals, one of the following (original hard copy - not electronically) is required:
      <ul>
        <li>Current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card</li>
        <li>In-date and valid full driving licence</li>
        <li>In-date and valid UK Provisional Photo Card Driving Licence</li>
        <li>In-date and valid passport</li>
        <li>UK biometric ID Card/Residence Permit (BRP)</li>
        <li>Armed Forces Identity Card</li>
        <li>Proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card)</li>
        <li>N.I. Electoral Identity Card or a resident permit as per Home Office guidance</li>
      </ul>
      For Non-British Nationals, an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

      <p><strong>Personal Protective Equipment (PPE)</strong><br />
      Delegates must bring the following PPE:
      <ul>
        <li>Hard hat</li>
        <li>Orange Hi-Visibility clothing to RIS-3279-TOM standard</li>
        <li>Ear defenders</li>
        <li>Goggles</li>
        <li>Safety boots with full ankle and mid-sole protection</li>
        <li>Gloves</li>
      </ul> " },
    { name: "De-veg Plant",
      description: "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

      <p><em>Course Requirements for Delegates</em></p>

      <p><strong>Minimum Age</strong><br />
      Delegates must be at least 16 years of age.</p>

      <p><strong>Language Proficiency</strong><br />
      Must have sufficient command of English language, as detailed in Network Rail Company Specification NR/L2/CTM/021 (Competence & Training in Track Safety).</p>

      <p><strong>Special Needs</strong><br />
      Please advise of any special needs, such as dyslexia, in advance of the course.</p>

      <p><strong>Identification</strong><br />
      Must bring photo ID. For British Nationals, one of the following (original hard copy - not electronically) is required:
      <ul>
        <li>Current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card</li>
        <li>In-date and valid full driving licence</li>
        <li>In-date and valid UK Provisional Photo Card Driving Licence</li>
        <li>In-date and valid passport</li>
        <li>UK biometric ID Card/Residence Permit (BRP)</li>
        <li>Armed Forces Identity Card</li>
        <li>Proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card)</li>
        <li>N.I. Electoral Identity Card or a resident permit as per Home Office guidance</li>
      </ul>
      For Non-British Nationals, an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

      <p><strong>Personal Protective Equipment (PPE)</strong><br />
      Delegates must bring the following PPE:
      <ul>
        <li>Hard hat</li>
        <li>Orange Hi-Visibility clothing to RIS-3279-TOM standard</li>
        <li>Ear defenders</li>
        <li>Goggles</li>
        <li>Safety boots with full ankle and mid-sole protection</li>
        <li>Gloves</li>
      </ul> "},

    { name: "Manual Handling",
      description: "This course is designed for anyone who needs to carry out manual handling tasks. It covers the safe lifting and handling of objects and the relevant health and safety regulations." }

  ],

  'MEDICALS' => [
    { name: "D&A",
      description: "<p><strong>Must be a minimum age of 16.</strong></p>

    <p><strong>Language Proficiency</strong><br />
    Must have sufficient command of the English language to address the assessment requirements of the qualification.</p>

    <p><strong>Photo ID</strong><br />
    For British Nationals: one of the following (original hard copy - not electronically):
    <ul>
      <li>A current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card;</li>
      <li>In-date and valid full driving licence;</li>
      <li>In-date and valid UK Provisional Photo Card Driving Licence;</li>
      <li>In-date and valid passport;</li>
      <li>A UK biometric ID Card/Residence Permit (BRP);</li>
      <li>An Armed Forces Identity Card;</li>
      <li>A proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card);</li>
      <li>N.I. Electoral Identity Card;</li>
      <li>A resident permit as per Home Office guidance.</li>
    </ul>
    For Non-British Nationals: an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

    <p><strong>Special Needs</strong><br />
    Please advise of any special needs, e.g., Dyslexia.</p>"
    },
  ]
}




  def self.course_options_as_json
    COURSE_OPTIONS.to_json
  end

end
