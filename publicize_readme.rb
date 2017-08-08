def stage_everything
  `mkdir publicize_readme;
  cp Readme* publicize_readme;
  cd publicize_readme;
  git init;'
  git add Readme*;`# I could make Readme more restrictive if allowing user to fix manually. they may not want that particular readme to be pushed and this would overide a reset Readme. Or if folder existed ... dont add all.
end
def prompt_user_with_question
  `git status`
  ask_only_readme
end
def ask_only_readme
  puts "Is only the Readme being created? y,n"; user_response = STDIN.gets
  if(user_response == 'y')
    approved_go_ahead
    remove_temp_folder_temp_remote
  elsif (user_response == 'n')
    not_approved
  else
    incorrect_user_response
  end
end
def incorrect_user_response
  puts "incorrect response to prompt"
  ask_only_readme
end
def approved_go_ahead
  `git remove publicize_readme #incase readme currently exists.
  git remote add publicize_readme "https://gitlab.com/$1/$2";
  git push publicize_readme master; `
end
def remove_temp_folder_temp_remote
  `cd ..;
  rm -rf publicize_readme;
  git remove publicize_readme;`
end
def not_approved
  puts "program was not approved and program_ending, feel free to make changes.
  \nLook at the git status report provided of the temp publicize_readme folder.
  \nGetting the program to meet your standards  will probably involve
  \nreset HEAD <filename> for non Readme/public files. Or
  \ngit add <name_of_readme_file>.
  \nif you would like an improvement feel free to open an ticket via issues
  \ngithub.com/michaeldimmitt/publicize_readme"
end

stage_everything
prompt_user_with_question
