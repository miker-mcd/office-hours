# OfficeHours

## Description
OfficeHours is a web application that provides a more efficient process for faculty to publish their proposals so that staff members can submit experiments for faculty review.

## Features
This app integrated the Google Maps API to display the location of the proposal and the Twilio API to provide an option for communicating via SMS text messages.

## Technologies Used
- Back End: Rails API, Active Record, PostgreSQL
- Front End: HTML, CSS, Materialize
- APIs: Google Maps, Twilio
- Authentication: Devise

## Install OfficeHours locally
1. Ensure the latest version of Rails is installed
2. Fork the office-hours repository to your GitHub account
3. Clone the repository in your account to your computer
4. Acquire and place the following in an env file located in the root folder:

  - Twilio API key

## Challenges
One of the main goals of this project was to simulate a client relationship by gathering specifications and requirements in order to deliver a satisfactory product. The challenge we faced was to establish frequent communication so that we could share information that would help limit any issues or unforeseen changes. We learned that client interactions are valuable opportunities that should be conducted early and often.

Another challenge was implementing admin roles with regards to faculty permissions. We utilized the Devise gem for authentication, however differentiating between faculty members and students is still unclear when a new user registers. A solution would be to implement faculty invitations via email or text message that provide a link to a separate member registration form or a unique code to be inputted on the registration form.

## Next Steps
We want to further explore Materialize to enhance the overall design of the application as well as make it mobile-responsive. We would also like to develop an option to archive completed projects and proposals, so that members could refer to them in a convenient place. Filtering proposals through a search bar, categories or tags would also improve the User Experience.

## The Team
  - Team Members: Michael McDonald([miker-mcd](https://github.com/miker-mcd)), David Keller([dckeller](https://github.com/dckeller)) and Daniel Way([dwaypro](https://github.com/dwaypro))
