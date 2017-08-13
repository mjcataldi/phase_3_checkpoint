# Rails Checkpoint

### INSTRUCTIONS

  - Work on your own
  - Only Use Migration & Model Generators. __(NO Controller or Scaffold generators)__
  - Issues: Google sticking points.
  - Avoid reusing code you've written this phase. __Write it up from scratch.__
  - Moral of the Story: There's no problem here you can't research and solve in short order.

#### Actually read __ALL__ the instructions before you start.

-----

### Workflow

#### Clone this repo, make a branch, make commits as needed, and open a pull request.

Some steps will require corresponding work in multiple files.  Additionally, you may have to overcome small hurdles not outlined within this document. You'll have to figure out what you need and what you don't as you go. Start small and complete features in an MVP behavior driven manner.  Commit after each release!

There are tests for all controllers.  If you have completed all the work, these tests will pass!  **Be sure to run them.**

After you push, open a P.R.

----

### RELEASES

#### Release 0 - Setup
- **SETUP** It’s a blank Rails application with a seeds file prepopulated. After you've cloned the repo, create a working branch for yourself and _git_ to it.

#### Release 1 - Asset Pipeline
  - Create a new stylesheet called `styles.css`. Place it in the correct spot so that the asset pipleline picks it up. As you complete each vertical slice (Releases 3-8), add styles to this file so that your site isn't so plain.  At least make it structurally like the wireframes.

#### Release 2 - Models & Seeds
- **SEEDS** We’ve provided a seed file of data, but it won’t work until your models are set up properly.
  - Find the seed file (saved in its conventional place) and set up your models and migrations to reflect the data structure there.
  - You should wind up with three resources: Users, Attendances, Concerts.
    - A user attends many concerts.
    - A concert can have many people attend it.

#### Release 3 - All Concerts
  - Create a concerts page to show all the concerts.
  - This page should have a header that reads 'Upcoming concerts'.
  - Display the concerts in ascending date order.
  - Display the band name and date of the show.
  - Each band name links to the corresponding concert SHOW view.
  - The root of the application should point to the all concerts page.
  - This page should be displayed even if the user is not logged in.
  - A link to this page titled 'Home' should appear at the top of every page.

    ![All Concerts](./readme_resources/concerts.png)

#### Release 4 - User Sign-up

  - Create a user sign up form that takes in first name, last name, email and password.
  - All fields are required
  - If the user does not enter all fields, the errors should be displayed on the page.
  - Signing up logs the user in as well.
  - If a user is not signed in, a signup link should appear at the top of every page.

    ![Sign Up](./readme_resources/sign_up.png)

#### Release 5 - User Login

  - Create a user login form that takes in email and password.
  - If the user doesn't exist or password doesn't match, display an error to the user.
  - If the user is not logged in a login link should appear at the top of every page.

    ![Login](./readme_resources/login.png)

#### Release 6 - User Logout

  - Add a logout link to the universal nav.  It should only show if a user is logged in.
  - Make this route custom.  It should be a GET to '/logout' and should point to the session controller's destroy method.

#### Release 7 - Concert Show
  - On this page display the band name, venue, date, and time of the show.
  - Also show the list of users that are attending the concert.
  - If the user is already attending the concert, their name should show bold in the attendee list (only when logged in).

    ![Concert Show](./readme_resources/concert_show.png)

#### Release 8 - Attend Concert
  - On the concert SHOW add a form with a button to attend a concert.
  - The button text should be 'Attend'.
  - This button should only be visisble if a user is logged in.

    ![Concert Logged In](./readme_resources/concert_show_logged_in.png)

  - Clicking this button should make an AJAX call so that we can store a record of this user planning to attend a particular concert.
  - When the response is received, add the logged in user's name to the list of attendees. The button/form should then be hidden.

    ![Concert Attending](./readme_resources/concert_attending.png)

#### Release 9 - Tests
  - Write a minimum of 5 **MODEL** tests of your choosing using Rspec to ensure your models basically tested.

#### Optional - Refactor
  - If you have time, refactor your code to dry it up, add additional styles as needed.


Do your best to build to all the features listed. If you get stuck and need to implement something in an alternative way, that’s better than not implementing it at all. Remain focused on MVP and remember to keep your problem scope small and manageable.
