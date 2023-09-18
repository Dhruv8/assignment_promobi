# README

Problem Statement: Course and Tutor
Given 2 models - Course & Tutor
-A course can have many tutors.
-Tutor can teach one course only.
Write:
1. Common POST API to create a course & its tutors
2. GET API to list all the courses along with their tutors
- Add Rspecs / Write complete test cases for API's

Solution: - 

I have created a Rails API only application with the corresponding models and relationships.
As,a common endpoint was required i have permited nested attributes in the course model and created two api's 
get and post.

I have added spec using the RSPEC library.

please bundle install the project 
run rake db:setup
seeds file is present for get api response

a sample POST request is below

`{
    "name" : "Course1",
    "tutors_attributes": [{
        "first_name": "Krishna",
        "last_name" : "Garg"
    },{
        "first_name": "Dhruva",
        "last_name" : "Sharma"
    }]
}`


Run the spec by `rspec spec/`