# rsg-stashes
Stashes used for Saloons and Law

<!-- Banner Section -->
<h2 align="left">
  RSG Stash Script
</h2>

<a href="https://github.com/dokusaido/rsg-stashes">
  <img align="right" src="https://komarev.com/ghpvc/?username=dokusaido&label=Visitors&color=0e75b6&style=flat" alt="Profile visitor" />
</a>

<!-- Introduction Section -->
<h3 align="left">
  <samp>&gt; Welcome, Cowboys and Cowgirls!
  </samp>
</h3>

<p align="left"> 
  <samp>
    This script allows for job-specific and location-specific stash access in RedM, enhancing immersion and roleplay in your server.
    <br>
    <br>
  </samp>
</p>

<!-- Section Dividers -->
<hr/>

<!-- About the Project -->
<h3 align="left">About the Project</h3>
<p>
  This stash system is designed to give players access to unique, job-based storages at specific locations. Each job has its own assigned stash that is only accessible at the designated spot, ensuring immersive and organized storage.
</p>

<!-- Important Notice -->
<h3 align="left">Important ⚠️</h3>
<p>
  <ul>
    <li>Do not modify, redistribute, or monetize this package without permission.</li>
    <li>Ensure your Redm server has the required dependencies installed for this script to function properly.</li>
  </ul>
</p>

<!-- Known Issues -->
<h3 align="left">Known Issues</h3>
<p>
  <ul>
    <li>Job-based stashes can be accessed from any configured location rather than the specific assigned location. A location check workaround is being implemented to address this.</li>
  </ul>
</p>

<!-- Support -->
<h3 align="left">Support</h3>
<p>
  Minimal support is available, but issues or bugs can be raised, and efforts will be made to address them.
</p>

<!-- To Do List -->
<h3 align="left">To Do</h3>
<ul>
  <li>[ ] Add additional job and stash configurations.</li>
  <li>[ ] Customize the distance checks for opening stashes.</li>
  <li>[ ] Consider adding customizable stash sizes per job grade.</li>
</ul>

<!-- Installation Instructions -->
<h3 align="left">Install</h3>
<ul>
  <li>Clone or download the repository.</li>
  <li>Place the script folder in your server's resource directory.</li>
  <li>Ensure the resource is added to your server configuration: <code>ensure stash_script</code>.</li>
  <li>Configure job-based stashes and location settings in <code>config.lua</code>.</li>
  <li>Restart your server to apply changes.</li>
</ul>

<!-- Configuration Example -->
<h3 align="left">Configuration Example</h3>
<details><summary>Click to Expand - Configuration Example</summary>

```lua
Config.Stashes = {
    ["vallaw"] = { name = "Valentine Sheriff's Locker", size = 5000, slots = 100, location = vector3(-1234.56, 432.78, 56.0) },
    ["rholaw"] = { name = "Rhodes Sheriff's Locker", size = 5000, slots = 100, location = vector3(-1234.56, 432.78, 56.0) },
    ["blklaw"] = { name = "Blackwater Sheriff's Locker", size = 5000, slots = 100, location = vector3(-1234.56, 432.78, 56.0) },
    ["medic"] = { name = "Medic Supply Cabinet", size = 2000, slots = 50, location = vector3(-1350.56, 400.78, 56.0) }
    -- Add more stashes as needed
}

</details> <!-- Contact Section --> <h3 align="left">Contact</h3> <p align="left"> No direct support is provided, but issues raised on GitHub will be reviewed. </p> <!-- Credits Placeholder --> <details> <summary>Click to Expand - Credits</summary>