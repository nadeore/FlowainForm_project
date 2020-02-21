<?php

$config = array(
        'addContactInfo' => array(
                array(
                        'field' => 'streetAddress1',
                        'label' => 'Street Address 1',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'streetAddress2',
                        'label' => 'Street Address 2',
                        'rules' => 'alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'streetAddress3',
                        'label' => 'Street Address 3',
                        'rules' => 'alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'city',
                        'label' => 'City',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'postalCode',
                        'label' => 'Postal Code',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'regionOrProvince',
                        'label' => 'Region or Province',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'countryCode',
                        'label' => 'Country Code',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'mobileNumber',
                        'label' => 'Mobile Number',
                        'rules' => 'required|numeric|trim'
                ),
                array(
                        'field' => 'emailAddress',
                        'label' => 'Email Address',
                        'rules' => 'required|valid_email|trim'
                )
        ),
    'addPersonelInfo' => array(
                array(
                        'field' => 'firstName',
                        'label' => 'First Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'middleInitial',
                        'label' => 'Middle Initial',
                        'rules' => 'max_length[1]|alpha|trim'
                ),
                array(
                        'field' => 'lastName',
                        'label' => 'Last Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'gender',
                        'label' => 'Gender',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'dateOfBirth',
                        'label' => 'Date of Birth',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'countryOfResidence',
                        'label' => 'Country of Residence',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'countryOfBirth',
                        'label' => 'Country of Birth',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'cityOfBirth',
                        'label' => 'City of Birth',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'citizenshipStatus',
                        'label' => 'Citizenship Status',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'permenantHomeGuardian',
                        'label' => 'Permenant Home Guardian',
                        'rules' => 'required'
                )
        ),
    'addScoreSAT' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'verbalScore',
                        'label' => 'Verbal Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'quantsScore',
                        'label' => 'Quants Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'essayScore',
                        'label' => 'Essay Score',
                        'rules' => 'required'
                )
        ),
    'addTest_Score_ACT' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'englishScore',
                        'label' => 'English Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'mathScore',
                        'label' => 'Math Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'readingScore',
                        'label' => 'Reading Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'scienceScore',
                        'label' => 'Science Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'writingScore',
                        'label' => 'Writing Score',
                        'rules' => 'required'
                )
        ),
    'addTest_Score_TOEFL_iBT' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'readingScore',
                        'label' => 'Reading Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'listeningScore',
                        'label' => 'Listening Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'speakingScore',
                        'label' => 'Speaking Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'writingScore',
                        'label' => 'Writing Score',
                        'rules' => 'required'
                )
        ),
    'addTest_Score_IELTS' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'readingScore',
                        'label' => 'Reading Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'listeningScore',
                        'label' => 'Listening Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'speakingScore',
                        'label' => 'Speaking Score',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'writingScore',
                        'label' => 'Writing Score',
                        'rules' => 'required'
                )
        ),
    'addTest_Score_SAT_Subject_Tests' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'subject',
                        'label' => 'Subject',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'score',
                        'label' => 'Score',
                        'rules' => 'required'
                )
        ),
    'addTest_Score_IB_Subject_Test' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'subject',
                        'label' => 'Subject',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'level',
                        'label' => 'Level',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'score',
                        'label' => 'Score',
                        'rules' => 'required'
                )
        ),
    'addTest_Score_AP_Subject_Tests' => array(
                array(
                        'field' => 'testDate',
                        'label' => 'Test Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'subject',
                        'label' => 'Subject',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'score',
                        'label' => 'Score',
                        'rules' => 'required'
                )
        ),
    'addMejor_Selection' => array(
                array(
                        'field' => 'areasOfStudyId',
                        'label' => 'Areas of Study',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'majorId',
                        'label' => 'Major',
                        'rules' => 'required'
                )
        ),
    'addsiblings' => array(
                array(
                        'field' => 'firstName',
                        'label' => 'First Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'middleInitial',
                        'label' => 'Middle Initial',
                        'rules' => 'max_length[1]|alpha|trim'
                ),
                array(
                        'field' => 'lastName',
                        'label' => 'Last Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'age',
                        'label' => 'Age',
                        'rules' => 'required|max_length[2]|integer|trim'
                ),
                array(
                        'field' => 'relationship',
                        'label' => 'Relationship',
                        'rules' => 'required'
                )
        ),
    'addhigh_Schools' => array(
                array(
                        'field' => 'schoolName',
                        'label' => 'School Name',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'schoolDateOfEntry',
                        'label' => 'Date of Entry',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'schoolCity',
                        'label' => 'School City',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'schoolCountry',
                        'label' => 'Country of School',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'schoolZipCode',
                        'label' => 'School Zip Code',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'guaduatedFromSchool',
                        'label' => 'Graduated From School',
                        'rules' => 'required'
                )
        ),
    'addAddcollege' => array(
                array(
                        'field' => 'collegeName',
                        'label' => 'College Name',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'joiningDate',
                        'label' => 'Joining Date',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'courseDetails',
                        'label' => 'Course Details',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'degreeEarned',
                        'label' => 'Degree Earned',
                        'rules' => 'required'
                )
        ),
    'addparent1' => array(
                array(
                        'field' => 'Parent1type',
                        'label' => 'Parent 1 Type',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'parent1Living',
                        'label' => 'Parent 1 Living Status',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'Parent1FirstName',
                        'label' => 'Parent 1 First Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'Parent1MiddleInitial',
                        'label' => 'Parent 1 Middle Initials',
                        'rules' => 'max_length[1]|alpha|trim'
                ),
                array(
                        'field' => 'Parent1LastName',
                        'label' => 'Parent 1 Last Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'Parent1FormerLastName',
                        'label' => 'Parent 1 Former Last Name',
                        'rules' => 'alpha_dash|trim'
                ),
                array(
                        'field' => 'Parent1CountryOfBirth',
                        'label' => 'Parent 1 Country of Birth',
                        'rules' => 'required'
                )
        ),
    'addparentno2' => array(
                array(
                        'field' => 'Parent2type',
                        'label' => 'Parent 2 Type',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'Parent2Living',
                        'label' => 'Parent 2 Living Status',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'Parent2FirstName',
                        'label' => 'Parent 2 First Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'Parent2MiddleInitial',
                        'label' => 'Parent 2 Middle Initials',
                        'rules' => 'max_length[1]|alpha|trim'
                ),
                array(
                        'field' => 'Parent2LastName',
                        'label' => 'Parent 2 Last Name',
                        'rules' => 'required|alpha_dash|trim'
                ),
                array(
                        'field' => 'Parent2FormerLastName',
                        'label' => 'Parent 2 Former Last Name',
                        'rules' => 'alpha_dash|trim'
                ),
                array(
                        'field' => 'Parent2CountryOfBirth',
                        'label' => 'Parent 2 Country of Birth',
                        'rules' => 'required'
                )
        ),
    'addHonors' => array(
                array(
                        'field' => 'honorTitle',
                        'label' => 'Honor Title',
                        'rules' => 'required|alpha_numeric_spaces|trim'
                ),
                array(
                        'field' => 'gradeLevel',
                        'label' => 'Grade Level',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'levelOfRecognition',
                        'label' => 'Level of Recognition',
                        'rules' => 'required'
                )
        ),
    'addEssay' => array(
                array(
                        'field' => 'essayOption',
                        'label' => 'Essay type',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'essay',
                        'label' => 'Essay',
                        'rules' => 'required|min_length[250]|max_length[650]|trim'
                )
        ),
    'addUploadDoc' => array(
                array(
                        'field' => 'schoolName',
                        'label' => 'School Name',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'typeOfTranscript',
                        'label' => 'Type of Transcript',
                        'rules' => 'required'
                )
        ),
    'AddCollegePlans' => array(
                array(
                        'field' => 'careerIntrest',
                        'label' => 'Career Intrest',
                        'rules' => 'required'
                ),
                array(
                        'field' => 'plannedHighestEduLvl',
                        'label' => 'Planned Highest Education Level',
                        'rules' => 'required'
                )
        )
);

?>