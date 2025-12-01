🚀 Sync Tools
A Universal Repository Sync & Automation Toolkit by Bandu

sync-tools is a lightweight automation toolkit designed to clone, sync, and maintain dozens of GitHub repositories across macOS, Linux, and cloud development environments.
It is optimized for multi-repo workflows, AI-assisted development (Claude Code, Cursor, Copilot), and ensures your local machine always stays in sync with the latest versions of your projects.

⭐ Why This Exists

As the number of projects grows (airline systems, MCPs, agents, workflows, PSS, travel apps, education platforms, finance dashboards), keeping everything synced manually becomes painful.

This toolkit solves that by letting you:

📥 Clone many repos at once

🔄 Pull updates from all repos with a single command

🔁 Track & update upstream sources (for forks)

🗂️ Organize local development structure

🤖 Give Claude/Cursor full context by maintaining local repo copies

💾 Version-control your automation so it works across all machines

📁 Repository Structure
sync-tools/
 ├── git-sync.sh        # Main sync script
 ├── repo-list.txt      # List of repositories to clone/sync
 ├── README.md          # Documentation
 └── (future utilities)

⚙️ git-sync.sh — What It Does

The git-sync.sh script is your command center. It:

Reads repo URLs from repo-list.txt

Clones them if they don’t exist locally

Pulls the latest from main/master

If a repo is a fork:

Adds an upstream remote (if missing)

Syncs changes from upstream into your fork

Shows status summaries for each repo

Run it:
./git-sync.sh

📄 repo-list.txt Format

Each line should contain a GitHub SSH URL:

git@github.com:jbandu/aioscrew.git
git@github.com:jbandu/crew-mcp.git
git@github.com:jbandu/PSS-nano.git
git@github.com:jbandu/bag-agents.git
git@github.com:jbandu/airline.git
git@github.com:rxsrini/qubits-crm-suite.git  # example upstream


You can include any number of repositories.

🔥 Use Cases
🧩 1. Multi-Repo AI Development

Claude Code, Cursor, and other agents can use your entire local repo structure as context — essential for complex agentic architecture development.

🚀 2. Rapid Setup on New Machines

Just install Git + SSH keys, clone this repo, and run:

./git-sync.sh


Instantly restore your entire coding environment.

🔄 3. Daily Sync of All Active Projects

Keeps your:

Airline MCPs

Flight planning system

Travel assistant

PSS

Maritime system

Crew compliance

Revenue accounting

All 60+ repos

up-to-date with one command.

🌐 Forks & Upstream Tracking

If you fork someone else’s repo (e.g., qubits-crm-suite):

git remote add upstream git@github.com:rxsrini/qubits-crm-suite.git


Then let git-sync.sh keep it updated automatically.

📦 Installation
git clone git@github.com:jbandu/sync-tools.git
cd sync-tools
chmod +x git-sync.sh

🎯 Roadmap (Optional Enhancements)

Planned future tools:

⭐ Automated repo health dashboard

⭐ Interactive sync logs (colored, grouped)

⭐ AI auto-summary of repo changes

⭐ Detect & fix merge conflicts automatically

⭐ Sync to multiple machines via GitHub Actions

🧑‍💻 Author

Jayaprakash "Bandu"

SVP & Head — Travel & Hospitality
Builder of MCP frameworks, agentic architecture, PSS replatforming, flight planning engines,
and 70+ enterprise-grade AI systems.
