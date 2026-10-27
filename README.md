# CS440-Lab4-ContextEngineeringStrategy-2
Student Repository for configuring the Intelligent Context Selection Context Engineering Strategy for AI for the CS440-Lab 4 assignment


## Intelligent Context Selection Overview: 

There are two sides to the context selection:
1. Agent Automation
2. User Influence

Agent Automation (Dynamic Discovery) has the AI automatically read the environment, looks through parent folders, and selects relevant context on its own, within guidelines. It will select more specific information over general, and more recently or frequently used information over seldom used. 

User Influence (Manual Override) gives the user ultimate control to override any decision the AI makes and add new rules with the /memory command. The AI will ask whether the new rule applies to the User or Project and then will write it to the corresponding file. 

## Directory Structure

CLAUDE.md  
README.md  
.claude/  
├── context/  
| ├── backend.md  
| ├── database.md  
| ├── frontend.md  
├──settings.json  
scripts/  
├── context-switcher.sh  

