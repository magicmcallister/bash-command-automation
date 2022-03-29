## Custom Bash Commands

### Commands

- ``sh search_xclip.sh``

Search on firefox browser the saved clipboard text.
One of the possible uses could be to associate the execution of the script to a keyboard shortcut. [Ubuntu tutorial](https://help.ubuntu.com/stable/ubuntu-help/keyboard-shortcuts-set.html.en)

### Keyboard Commands

- ``sh create-git-project.sh {project:optional}``

This commmand creates a new github project. If project argument is provided, the project folder is created before run the git commands.
Before using the script you have to have git credentials set up.

- ``sh projects_menu.sh``

A menu opens showing you the elements that are inside the route that you define in the script itself. When a element is select, it is opened by the defined editor. This example uses Visual Studio Code (command: _code_)

- _folder_to_open_: Route of the folder.
