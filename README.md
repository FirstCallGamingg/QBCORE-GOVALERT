# QBCORE Gov Alert 

A QBCore staff utility that allows authorized staff to send a server-wide Government Alert using a command. Includes a custom alert sound and configurable permissions.

## Features
- Server-wide government alert sent to all players
- Custom alert sound included
- Permission system configurable in `server.lua`
- Timed alert display (best/recommended time: **25 seconds**)
- Lightweight and easy to use

## File Structure
This resource includes the following files and folders:
- `fxmanifest.lua`
- `client.lua`
- `server.lua`
- `html/` (UI & alert sound files)

⚠️ **DO NOT rename or change any file or folder names**  
Changing names will cause the resource to stop working.

## Requirements
- QBCore

## Installation
1. Download or clone this repository  
2. Place the `fcg-govalert` folder into your `resources/[qb]` directory  
3. Add the following to your `server.cfg`:

4. ensure fcg-govalert
   Restart your server

## Usage
Use the command below to send a government alert to all players:

/govalert <message>


## Configuration
- Open `server.lua`  
- Edit the permission check to match your server’s staff roles or ACE permissions  
- You may adjust the alert duration (recommended: **25 seconds**)  
- You may replace the alert sound inside the `html` folder, but **keep the same file name** referenced in the script

## Notes
- This script is intended for staff announcements and city-wide alerts  
- Changing file or folder names **WILL break the resource**


## Join Our RP Server
If you’d like to join our FiveM roleplay community, check out **Young Hood RP**:

Discord: [Click Me To Join Our Server](https://discord.gg/aQjvdmHFFy)

## Support
If you encounter any issues, please open an issue on this GitHub repository.

<img width="1536" height="1024" alt="QBCOREGOVALRT" src="https://github.com/user-attachments/assets/42afb43a-4132-4931-8429-9f0140685bdc" />
