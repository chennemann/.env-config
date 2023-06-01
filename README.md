# .env-config
Configuration for many aspects of development (Gradle, Vim, Git, IntelliJ)


To use this configuration clone this repository into your home directory with:
```
git clone https://github.com/chennemann/.env-config.git
```
Make sure to copy all files directly into your home directory

- - - -

## .bash-config

The purpose of this configuration is to organize .bashrc scripts in multiple files to keep it organized.
If you use git bash to manage your repositories you will now have a long list of available shortcuts you can use to fasten up your workflow.

See: .bash-config/.alias-config for a reference of all available shortcuts

## Configuration

This .env-config is an opinionated baseline configuration created with extensibility in mind.

1. Create a '.defaults' file (based on the .defaults.template file) in .bash-config to adjust common options
2. Use the intelij-bash.bat in .tools as the Terminal executable in IntelliJ IDEA
3. Create a '.local-alias-config' file in .bash-config to add your own aliases
4. Create a 'extensions' directory in .bash-config. Each file inside the root of this folder will be automatically added to your bashrc. There you can create configuration files and sync them via another repository.