# T1A3 Assignment - Terminal Application 
### **by Annabelle Caspersz**

### **R3: Referenced Sources**

ICON ART: <https://game-icons.net/>  
ICON ART: <https://asciiart.club/>


### R4: **Provide a link to your source control repository**

Remote repository (GitHub): <https://github.com/ACaspersz/fishbrains>

### **R5: Software Development Plan: Statement of Purpose and Scope**

*FishBrains* is a memory based flash card game that will test the users information processing ability by matching symbols quickly and accurately.  

**What problem will this application solve?**  
The ability to rapidly identify, process and act on short term patterns is a cognitive ability that is essential for both adults and children today, in the workplace, home and at school. Processing speed is associated with reading and math ability, and so is strongly correlated with reading and math achievement in children. However, informational processing can be impaired in some people, such as cases of executive function disorder (for example, ADHD) and learning disabilities. Additionally, poorer processing speed is common in people as they age, and is a key indicator of cognitive decline or frailty.

Simple brain training exercises have been shown to improve information processing and general cognitive ability. Therefore, a simple speed memory game is ideal not only so the user can assess their baseline ability, but also so they can work on this skill and improve this essential function with continued use. 

 **Who is the target audience?**  
This game is for anyone who wants to improve their information processing ability, whether they are children, adults or elderly. Because of the simple interface the game is useful and understandable to all ages, as the symbols and input requirements are easy to grasp.

**How will the target audience access the application?**  
The user will only require access to a Mac computer. Once the game is downloaded along with its associated gems, it can be run anytime from the command line. It can be accessed anytime the target audience would like to test their ability, compare with their previous stats or other users stats, or hit a personal best score. Its simple functionality and navigation make it understandable and playable by all.

### **R6: Features of the application**

**1. User can input their name from the command line**.  
 After beginning the app, the user will be prompted to enter their name, which will be stored in ARGV if not already done so. If user does not complete name prompt, an argument error will be passed looping user back until this is completed. Username is then stored in a global variable which will be used later in the game to provide feedback and/or statistics on game play. 

**2. Menu Bar: Play game, Tutorials, Highscores, Exit**.  
 This feature prints a menu to the screen, allowing the user to navigate three choices of input: 
 - Play Game (which initiates a single round of the flash card game) 
 - Tutorial
 <!-- - Stats (which allows user to view highscores and also look at changes in individual player scores over time) and  -->
 - Exit   
 The menu method is called within a loop and can handle incorrect input if needed.

**3. Play Game**   
After seeing an instruction page on how to play the game, the player shown 40 ? symbols and need to indicate whether each symbol matches the last. Will be given < 45 sec countdown to match as many symbols as possible. Will record number of correct matches and also time taken to answer. Screen will flash green if correct and make a correct sound effect, and will beep incorrect and flash red if incorrect. Player will no longer be shown symbols at the end of the game and will be shown a screen with feedback from their gameplay, such as score, whether this is a personal best for the particular player (linked to username stats), and whether this is a top 5 high score. 

4. **Tutorial Screen**

<!-- 4. **Statistics Menu**: will record game score ? (number of errors/response time? or would numerical score be better). If same name, can compare to previous scores (and give a percentage increase or decrease?) can also record & store multiple different players. -->

5. **Sub-Options Menu**



### **R7: User interaction and experience**

**How the user will find out how to interact with / use each feature**   
Upon launching the game, the user's name will be captured. The user will be initiated into the game by the welcome screen which will transition into the main menu options, which explains what actions and activities are available for the user to take. Additionally, each 

**how the user will interact with / use each feature** 
The user will need to input pre-determined commands into the terminal to interact with the app. The options menu will be present on the screen whenever a selection needs to be made. Each time a selection is made, 'tty-progressbar' will commence, followed by either ascii art or an ascii animation plus sound via mac-say to let the user know that something is happening.

**how errors will be handled by the application and displayed to the user**
The application utilizes conditional loops and rescue and raise error statements. If the user enters an input that is invalid, they will see an error statement and if it occurs in the middle of gameplay, a sound and alert on the screen will indicate this.


### R8: **Develop a diagram which describes the control flow of your application. Your diagram must:**
*- show the workflow/logic and/or integration of the features in your application for each feature*
*- utilise a recognised format or set of conventions for a control flow diagram, such as UML.*

### **R9: Implementation Plan**

Trello board: <https://trello.com/b/enQ4AeJ1/terminal-application-project>

I used Trello to manage implementation requirements for this project, which can be accessed at the above link. I also created a table below to outline tasks further: 

| Feature       | Checklist   | Deadline   |
| -- | --------- | ---|
|  1 | More Stuff blfgfiogsfgsl;fgisdfjgsl | And Again|
| 2   | Put Pipes In | Like this|   
| 3  |               |          |
|4      |           |           |
|5  |               |           |

### R10: **Design help documentation which includes a set of instructions which accurately describe how to use and install the application.**

### **You must include:
*- steps to install the application*
*- any dependencies required by the application to operate*
*- any system/hardware requirements*

### System Requirements
MemoryGame utilizes gems that are Mac dependent and will not function on other operating systems.

BotDog has only been tested on Mac OS High Sierra version 10.13.6.

The following Ruby Gems are required to run this application: 

- gem "bundler" version ??
- gem "rspec" version ???
- gem "colorize" version 0.8.1


### How to Install and Run this application

If you do not have Ruby installed on your computer, follow these instructions to [install and run](https://www.ruby-lang.org/en/documentation/installation/).

Once this is completed, download source documentation here. 

