## File permissions Commands:-
* chmod: Change File Permissions:
   * Syntax: chmod [permissions] [file]
     - Examples:
      * chmod +x file: Add execute permission for the file.
      * chmod u+rwx file: Give the owner read, write, and execute permissions.
      * chmod go-rw file: Remove read and write permissions for the group and others.
      * chmod 755 file: Give read, write, and execute permissions to the owner, and read and execute permissions to group and others.
* chown: Change File Ownership:
  * Syntax: chown [owner]:[group] [file]
     - Examples:
      * chown user:group file: Change the owner and group of the file.
      * chown :group file: Change only the group of the file.
* chgrp: Change File Group:
  * Syntax: chgrp [group] [file]
     - Example:
      * chgrp newgroup file: Change the group of the file to newgroup.
* ls: Display File Permissions:
  * Syntax: ls -l [file]
    - Example Output:
     * csharp
     * Copy code
     * -rw-r--r-- 1 user group 1024 Jan 1 10:00 file.txt
The first field represents file permissions for the owner, group, and others.
* Octal Representation of Permissions:
   Octal values represent permissions. Each digit corresponds to owner, group, and others.
   - Permission Values:
     4: Read (r)
     2: Write (w)
     1: Execute (x)
   - Example:
     chmod 644 file: Owner has read and write, group has read, others have read.
* umask: Set Default File Permissions:
  * Syntax: umask [octal_value]
    Example:
    umask 022: Default permissions are rw-r--r-- for files and rwxr-xr-x for directories.
* Sticky Bit:
   The sticky bit is used to prevent users from deleting each other's files in a directory.
  - Example:
     chmod +t directory: Set the sticky bit on the directory.
* su and sudo:
su: Switch user or become superuser.
Syntax: su [username]
sudo: Execute a command as another user, often the superuser.
Syntax: sudo [command]![Linux file]

![Linux file](https://github.com/nikitadudhbhate/Devops/assets/69752276/3699a964-125f-4287-ac89-b2515a021a61)


