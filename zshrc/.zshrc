# We use the setopt so that it does not complain if there are no enabled snippets
setopt +o nomatch nullglob
files=(~/zshrc.d/*.zsh)
setopt -o nomatch nullglob

# Load all enabled zshrc snippets
for file in "${files[@]}"; do
    . "${file}"
done

