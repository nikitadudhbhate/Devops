# File Operations

### Viewing and Editing Files:
* cat [file]: Display the contents of a file.
* touch:  is used to create a new empty file and to change the timestamps of existing files.
* more [file] or less [file]: View long text files page by page.
* nano [file] or vim [file]: Text editors for creating or editing files.
### Advanced File Operations:
#### Symbolic Links and Hard Links:
* ln -s [target] [link_name]: Create a symbolic link.
* ln [target] [link_name]: Create a hard link.
##Searching and Filtering:
* find [directory] -name [filename]: Search for files by name.
* grep [pattern] [file]: Search for a pattern in a file.
* awk or sed: Text processing tools for more advanced pattern matching and manipulation.

### Changing File Permissions and Ownership:

* chmod [permissions] [file]: Change file permissions.
* chown [user:group] [file]: Change file ownership.
#### Archiving and Compression:
* tar -cvf [archive_name.tar] [file1] [file2] ...: Create a tar archive.
* tar -xvf [archive_name.tar]: Extract files from a tar archive.
* gzip [file]: Compress a file, creating a .gz file.
* bzip2 [file]: Compress a file, creating a .bz2 file.
* xz [file]: Compress a file, creating a .xz file.
#### Advanced Directory Listing:
* ls -R: List files and directories recursively.
* ls -i: Display the inode number of each file.
* ls -t: Sort files by modification time.
* ls -S: Sort files by size.
### Basic Compression Commands:
* tar: Archiving and Compression:
* tar -cvf [archive_name.tar] [file1] [file2] ...: Create a tar archive.
* tar -xvf [archive_name.tar]: Extract files from a tar archive.
* tar -czvf [archive_name.tar.gz] [directory]: Create a compressed tar archive (gzip).
* tar -xzvf [archive_name.tar.gz]: Extract files from a compressed tar archive (gzip).
* tar -cjvf [archive_name.tar.bz2] [directory]: Create a compressed tar archive (bzip2).
* tar -xjvf [archive_name.tar.bz2]: Extract files from a compressed tar archive (bzip2).
* tar -cJvf [archive_name.tar.xz] [directory]: Create a compressed tar archive (xz).
* tar -xJvf [archive_name.tar.xz]: Extract files from a compressed tar archive (xz).
* gzip: Compression and Decompression:
* gzip [file]: Compress a file, creating a .gz file.
* gzip -d [file.gz]: Decompress a .gz file.
* bzip2: Compression and Decompression:
* bzip2 [file]: Compress a file, creating a .bz2 file.
* bzip2 -d [file.bz2]: Decompress a .bz2 file.
* xz: Compression and Decompression:
* xz [file]: Compress a file, creating a .xz file.
* xz -d [file.xz]: Decompress a .xz file.
#### Advanced Compression Commands:
##### Combining Commands:
* tar -czvf - [directory] | ssh user@remote 'cat > [remote_path/archive_name.tar.gz]': Compress and send over SSH.
    * Incremental Backups with rsync:
         * rsync -a --delete --link-dest=[previous_backup] [source_directory] [backup_directory]: Create incremental backups.
    * Parallel Compression with pigz and pbzip2:
         * tar -I 'pigz -c' -cvf [archive_name.tar.gz] [directory]: Use pigz for parallel compression.
         * tar -I 'pbzip2 -c' -cvf [archive_name.tar.bz2] [directory]: Use pbzip2 for parallel compression.
    * zip Compression:
         * zip -r [archive_name.zip] [directory]: Create a zip archive.
         * unzip [archive_name.zip]: Extract files from a zip archive.
    * Creating Self-Extracting Archives:
         * cat [archive_name.tar.gz] | gzip -d | tar -xv: Extract files from a self-extracting tar archive.
