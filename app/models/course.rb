class Course < ApplicationRecord

  validates_presence_of :name, :category

COURSE_OPTIONS = {
  'RAIL' => [
    # { name: "Rail Saw and Impact Wrench",
    #  description: "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

    #   <p><em>Course Requirements for Delegates</em></p>

    #   <p><strong>Minimum Age</strong><br />
    #   Delegates must be at least 16 years of age.</p>

    #   <p><strong>Language Proficiency</strong><br />
    #   Must have sufficient command of English language, as detailed in Network Rail Company Specification NR/L2/CTM/021 (Competence & Training in Track Safety).</p>

    #   <p><strong>Special Needs</strong><br />
    #   Please advise of any special needs, such as dyslexia, in advance of the course.</p>

    #   <p><strong>Identification</strong><br />
    #   Must bring photo ID. For British Nationals, one of the following (original hard copy - not electronically) is required:
    #   <ul>
    #     <li>Current and valid branded form of identity token used for accessing the RMI (Railway Maintained Infrastructure) such as a Sentinel Card</li>
    #     <li>In-date and valid full driving licence</li>
    #     <li>In-date and valid UK Provisional Photo Card Driving Licence</li>
    #     <li>In-date and valid passport</li>
    #     <li>UK biometric ID Card/Residence Permit (BRP)</li>
    #     <li>Armed Forces Identity Card</li>
    #     <li>Proof of age card recognised under PASS with a unique reference number (including the Citizen ID Card)</li>
    #     <li>N.I. Electoral Identity Card or a resident permit as per Home Office guidance</li>
    #   </ul>
    #   For Non-British Nationals, an in-date and valid passport, Identity Card, or Driving Licence from an EU or European Economic Area (EEA) country or a US Passport Card is required (original hard copy - not electronically).</p>

    #   <p><strong>Personal Protective Equipment (PPE)</strong><br />
    #   Delegates must bring the following PPE:
    #   <ul>
    #     <li>Hard hat</li>
    #     <li>Orange Hi-Visibility clothing to RIS-3279-TOM standard</li>
    #     <li>Ear defenders</li>
    #     <li>Goggles</li>
    #     <li>Safety boots with full ankle and mid-sole protection</li>
    #     <li>Gloves</li>
    #   </ul> " },
{
  "name": "Track Trolley",
  "description": "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

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
      </ul></p>

      <p><strong>Areas covered in the training included:</strong></p>
      <ul>
        <li>Carry out the necessary preparations in line with work requirements.</li>
        <li>Complete appropriate pre-use checks to ensure that the hand trolley is fit for purpose.</li>
        <li>Select and use personal protective equipment appropriate for using a hand trolley.</li>
        <li>Understand what safe systems of work are required to be put in place prior to the hand trolley being placed on the track.</li>
        <li>Assemble, load, operate and control the hand trolley safely taking account of the manufacturer’s instructions.</li>
        <li>Control and operate the hand trolley safely taking account of the manufacturer’s instructions.</li>
      </ul>"
},

{
  "name": "Cat Scan (RD8000,EASYCAT, Cat4, CXL4, CAT4+)",
  "description": "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

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


      <!-- New Section: Safe Use of CAT & Genny Course -->
      <p><strong>Safe Use of CAT & Genny Course</strong></p>
      <p>Areas covered in the training included:</p>
      <ul>
        <li>Locate and identify the controls on the equipment and explain their function.</li>
        <li>Conduct all pre-operational checks in accordance with legislation and manufacturer’s guidance.</li>
        <li>Define underground services and identify the different types.</li>
        <li>Demonstrate the correct use of the equipment.</li>
        <li>Perform all shut down and end of shift procedures.</li>
        <li>CXL4, CAT4, CAT4+, RD8000, EZICAT.</li>
      </ul>"
},

  ],

  'CONSTRUCTION' => [
{
  "name": "Small Tools",
  "description":
  "<p><em>Course Requirements for Trainees</em></p>
  <p><strong>Minimum Age</strong><br>
  Participants must be at least 18 years old.</p>
  <p><strong>Health and Safety</strong><br>
  Trainees should be in good health and able to handle the physical demands of the course. If there are specific health concerns, a pre-course medical assessment may be required.</p>
  <p><strong>Personal Protective Equipment (PPE)</strong><br>
  Trainees must bring their own PPE, including:<br>
  - Safety glasses or goggles<br>
  - Protective gloves<br>
  - Safety boots with steel toe caps<br>
  - Hearing protection (earplugs or earmuffs)</p>
  <p><strong>Identification</strong><br>
  A valid photo ID (e.g., passport, driving license) must be presented on the day of the course.</p>
  <p><strong>Punctuality</strong><br>
  Trainees should arrive at the course location promptly to ensure a smooth start and to receive the full benefit of the training.</p>

  <!-- New Section: Small Plant & Power Tools Course -->
  <p><strong>Small Plant & Power Tools Course</strong></p>
  <p>Areas covered in the training included:</p>
  <ul>
    <li>Stating the health and safety responsibilities when using small plant and power tools.</li>
    <li>Listing the pre-use checks.</li>
    <li>Identifying the common hazards relating to the use of power tools covered on this course.</li>
    <li>Outlining the after-use checks.</li>
    <li>Demonstrating correct method of using the power tools and small plant covered on this course.</li>
    <li>Generator, Hydraulic Breaker, Petrol Saw, Floor Saw, Grinder.</li>
    <li>Cobra TT (Ballast Packer), Abrasive Wheel, Wacker Plate, Foot Plate, Impact Wrench (Bance).</li>
  </ul>"
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
    {
  "name": "De-veg Plant",
  "description": "<p><strong>This course is designed for delegates who need to meet the specific criteria outlined below. It covers the necessary requirements and regulations for the course.</strong></p>

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
      </ul></p>

      <p><strong>Areas covered in the training included:</strong></p>
      <ul>
        <li>Stating the health and safety responsibilities when using small plant and power tools.</li>
        <li>Listing the pre-use checks.</li>
        <li>Identifying the common hazards relating to the use of power tools covered on this course.</li>
        <li>Outlining the after-use checks.</li>
        <li>Demonstrating correct method of using the power tools and small plant covered on this course.</li>
        <li>Strimmer, Brush Cutter, Leaf Blower, Extendable Hedge Trimmer.</li>
      </ul>"
},


 {
  "name": "Manual Handling",
  "description": "<p>This course is designed for anyone who needs to carry out manual handling tasks. It covers the safe lifting and handling of objects and the relevant health and safety regulations.</p>

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


      <!-- New Section: Areas covered in the training included -->
      <p><strong>Areas covered in the training included:</strong></p>
      <ul>
        <li>Understand the significance of manual handling injuries.</li>
        <li>Have a basic knowledge of human anatomy.</li>
        <li>Appreciate manual handling legislation and risk assessments.</li>
        <li>Understand principles of safe manual handling.</li>
        <li>Be able to apply these principles to your own work situations.</li>
        <li>Be able to train others on safe manual handling.</li>
      </ul>"
},


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
