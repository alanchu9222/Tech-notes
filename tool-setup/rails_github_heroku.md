## This is a list of steps to:
  * Setup a new Rails app  
  * Initialize a local repository using git  
  * Create a new remote repository using GitHub  
  * Change README.rdoc  
  * Deploy to a cloud service - Heroku  

## Assumptions: 
  * Ruby is installed (v 1.9.3)  
  * Rails is installed (v 3.2.3)  
  * Git is installed  
  * Github account is established  
  * Heroku account is established  
  * Heroku gem is installed and SSH keys added  


## Setup a new Rails app 

   Navigate to the directory in which you want the
    new app created using 'change directory' (cd).   
     
   Use the 'make directory' (mkdir) command if you
    want to create a new directory, such as rails_projects
    (Note: Rails will automatically create a directory
    for all your app files)  

      $ cd <correct_directory>  

   Create a new app. It's good practice to append your
    new app name with '_app' so that it will not be confused
    with any classes you create later.   
      
   The 'rails new' command will create the default Rails
    file structure inside a directory with the name you
    gave in the command above

      $ rails new <new_app> 

   Navigate to the newly created directory using 'cd' 
                                                                    
      $ cd <new_app> 
                               
                              

         
## Initialize a git repository ##

   Initialize a new git repository locally    
    (This initializes a repository in the current
    working directory, so ensure you are in the correct one.)

      $ git init  

   Add everything in the current directory to the repository 
                                                       
      $ git add .   
              
   OPTIONAL - Check git status to show you what is currently
    in the 'staging area'
                                      
      $ git status 

   Commit all the changes in the 'staging area' to
    the LOCAL git repository and add a comment

      $ git commit -m "Initial commit" 

   OPTIONAL - Check the log to show a list of commit messages

      $ git log                                               
  



## Create a new GitHub repository and set as master branch ##

   Create a new GitHub repository
      
      # Log in to GitHub 

      # Select 'New repository' or navigate to https://github.com/new

      # Add a Repository name that matches your app name (<new_app>) 

      # Deselect 'Initialize this repository with a README.

   Tell git to add Github as the origin for the 'master' branch   
                    
      $ git remote add origin git@github.com:<username>/<new_app>.git           

   Push the local repository up to Github (the remote repository)                               

      $ git push -u origin master 
  



## Change README.rdoc, commit and push the change ##

   Open README.rdoc in textmate

      $ mate README.rdoc      
                                          
      # Replace default info with info relevant to your app

   Commit all (-a) modifications with a comment (-m)
    about what was changed     
    [Use 'git add' first if new
    files were created]

      $ git push                                      

  Push locally commited changes to Github    
   [Can skip 'origin master' b/c one push was done above]

      $ git commit -a -m "Improve the README file"  
  



## Deploy to Heroku ##

   Create a new app with subdomain at Heroku

      $ heroku create --stack cedar  

   Push the app to Heroku

      $ git push heroku master  

   Open the app in the browser   
    (Subdomain is listed in the terminal
    after the 'heroku create' command)           

      $ heroku open     
                 
  
## If Heroku doesn't work, check your GEMFILE.

These are the initial changes recommended by Hartl

<pre>
gem 'jquery-rails', '2.0.0'

group :development do
   gem 'sqlite3', '1.3.5'
end

group :assets do
   gem 'sass-rails',   '3.2.4'
   gem 'coffee-rails', '3.2.2'
   gem 'uglifier', '1.2.3'
end
</pre>