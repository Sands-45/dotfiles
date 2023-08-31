function rc --description 'Git directories in ~/Repos/Class/ with fzf'
    set selected_dir (fd --type d --base-directory ~/Repos/Class/ -H '^\.git$' | sed 's/\/\.git\/$//' | fzf)
    if test -n "$selected_dir"
        cd ~/Repos/Class/"$selected_dir"
    else
        echo "No directory selected"
        return
    end
end
