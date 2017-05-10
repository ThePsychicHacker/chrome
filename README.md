<h1>Google Chrome Installation in Linux</h1>
<p>Using this Repo You can Easily Install Google Chrome in your Debian System</p>
<p>The Repo is Simple Just Download it and Run it.</p>
<p>Supports almost all Linux Version that uses Debian Package.</p>
<p>If you are a Non-root User You can Simply run it by typing google-chrome in the terminal but if you are a root user You need to make few changes in the chrome script.</p>
<h5>You need to follow the following Steps</h5>
<ol>
<li>Move to Directory /opt/google/chrome/</li>
<li>Locate the file named google-chrome, edit it using any editor and move to the end until you find these lines<br>

<img src="http://i.imgur.com/EvHzoFR.png" >
</li><li>
Now Copy --user-data-dir, Paste it after "$@" like this and Save it. <br>
<img src="http://i.imgur.com/R4IavJs.png">
</li>
<li> Now Open the terminal and type google-chrome --no-sandbox and Now Chrome is opened.</li>
</ol>
<b>Due to --no-sandbox the security might suffer so it is recommended to use Google Chrome as a Non-root user.</b>
