Welcome to the SF OPEN ART PROJECT
By Francisco Felipe Suero
Email: Suerofrancisco@yahoo.com

Deployed Version: https://stark-bastion-46425.herokuapp.com
<br>
<h4>Guided Tour:</h4>
<ul> 
  <li>The first step is to behold the beauty of the index page, in which you can see all the art SF has to offer, according to their APIs. </li>
  <li>It is recommended you check out what the show page for a few of these displays, namely nearby parking, as well as the locations of other notable nearby art, which allows a potential visitor to customize their visit </li>
  <li> Experiment with the search, note, especially how the querries are interdependent </li>
  <li> Register an account, and notice how the nav bar changes to adjust </li>
  <li> Go and make a bookmark list, or several, as you can't bookmark anything until you have at least one list </li>
  <li> Visit the different show pages and bookmark different locations that sound interesting </li>
  <li> Visit the bookmarks page again and see how your map has updated and how all your bookmarks are displayed </li>
  <li> Log out to verify that bookmark pages are only visible to logged in users </li>
  <li> You have now seen the main features of the SF OPEN ART PROJECT </li> 
</ul>

<h4>Technical Highights</h4>
<ul> 
  <li>Full integration with several SF OpenData APIs </li>
  <li>Complex dynamic string generation for producing the requests for static maps from the google API</li>
  <li>Full featured authorization system</li>
  <li>Seamless integration between database generated data and API generated data </li>
  <li>Fast performance despite API calls </li>
</ul>

<h4>Downloading and using locally</h4>
To download and run this repo locally follow the following steps
<ul> 
  <li> Navigate to the desired folder, and in the command line type -git clone git@github.com:thecog19/SF_Art.git </li>
  <li> Navigate in the SF_Art folder </li>
  <li> Type rails db:create in console</li>
  <li> Type rails db:migrate in console</li>
  <li> Type rails s in console to start the local server</li>
  <li> In your local browser navigate to localhost:3000</li>
  <li> When you're finished, don't forget to close the local server by hitting ctrl-c in the session running the server </li>
</ul>