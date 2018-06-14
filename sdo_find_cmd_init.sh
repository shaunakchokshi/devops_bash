echo 'function find_files() { find . -name "$1"\* }' >> ~/.bashrc
echo 'function find_all_files() { grep -rnw -e ""$1"" }' >> ~/.bashrc