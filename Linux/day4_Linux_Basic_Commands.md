# Basic Commands 
### Navigating the File System:
* pwd: Print the current working directory.
  * pwd -L: Prints the symbolic path. 
  * pwd -P: Prints the actual path.
* ls: List files and directories.
  * ls -l :known as a long format that displays detailed information about files and directories.
  * ls -a :Represent all files Include hidden files and directories in the listing.
  * ls -t :Sort files and directories by their last modification time, displaying the most recently modified ones first.
  * ls -r :known as reverse order which is used to reverse the default order of listing.
  * ls -S : Sort files and directories by their sizes, listing the largest ones first.
  * ls -R :List files and directories recursively, including subdirectories.
  * ls -i : known as inode which displays the index number (inode) of each file and directory.
  * ls -g : known as group which displays the group ownership of files and directories instead of the owner.
  * ls -h : Print file sizes in human-readable format (e.g., 1K, 234M, 2G).
  * ls -d : List directories themselves, rather than their contents.
  * ls -lh: Display File Size in Human Readable Format Using `ls -lh`  (h stands for human readable form) : To display file size in easy-to-read format. i.e i.e M for MB, K for KB, G for GB.
  * ls -1 :Display One File Per Line Using `ls -1 `
  * ls -ld:Display Directory Information Using `ls -ld` ( if you want the details of the directory then you can use -d)
     * ls -ld/[directory_name] :  if you want to display the information about the directory.
  * ls -lt:Order Files Based on Last Modified Time Using `ls -lt`
  * ls -ltr:Order Files Based on Last Modified Time (In Reverse Order) Using `ls -ltr `
  * ls -a :Display Hidden Files Using ls -a (or) ls -A
  * ls -q : Hide Control Characters Using `ls -q`
  * ls -F :Visual Classification of Files with Special Characters Using `ls -F`
            -F which classifies the file with different special characters for different kinds of files.
    * – directory.
    * nothing – normal file.
    * @ – link file.
    * – Executable file
  * ls --color==auto:Visual Classification of Files with Colors Using `ls -F`
      * Note:
         * Blue: Directory file color
         * Green: soft links get displayed 
       
   
* cd: Change directory.
* Note - If no directory is specified, ‘cd’ will take you to your home directory by default
   * cd .. : to get back to move to the parent directory.
   * cd[directory name]/
* cd / : By using `/` as an argument in `cd` we can change the directory to the root directory.
* to Change Directory to Home Directory from any location in Linux System(`~` this argument is used in `cd` command to change the directory to the home directory from any location in Linux System.)
   `syntax:- cd ~`
* to move inside a directory from a directory :- cd dir_1/dir_2/dir_3 (dir_1/dir_2/dir_3 are as of example)
### File and Directory Operations:
* mkdir: Create a new directory.
   * to create a directory with verbose output using `mkdir` command :- mkdir -v [directory_name] ('v' means verbose) 
   * to create multiple directories in Linux using `mkdir` command :- mkdir [directorie_name_1] [directorie_name_1] [directorie_name_1]
* rmdir : To deete the directory.
### Copying, Moving, and Removing Files:
* cp: Copy files or directories.
* mv: Move or rename files or directories.
* rm: Remove files or directories (be careful with this command).
  * -i (Interactive Deletion): the -i option makes the command ask the user for confirmation before removing each file, you have to press y for confirm deletion, any other key leaves the file un-deleted.
      - ex:- rm -i [file_name]
      - rm: remove regular empty file 'd.txt'? y
  *  -f (Force Deletion): rm prompts for confirmation removal if a file is write protected. The -f option overrides this minor protection and removes the file forcefully.
          - $ rm -f [file_name]
  *  -r (Recursive Deletion): With -r(or -R) option rm command performs a tree walk and will delete all the files and sub-directories recursively of the parent directory.
  *  symbol (-): To remove a file whose name begins with a dash (“-“), you can specify a double dash (“–“) separately before the file name. 
