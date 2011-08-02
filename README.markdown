Running
---
Helpers for finding out which version of Ruby (MRI 1.8, MRI 1.9, Rubinius, etc) you are using. Use cases include testing with code features only available on certain platforms.

This code was extracted from Bundler, so that it could be used generally by the Ruby community. If you have a missing interpreter you'd like to add, please send a pull request.

Currently the following methods are present:

    Running.ruby?
    Running.ruby_18?
    Running.ruby_19?
    
    # MRI
    Running.mri?
    Running.mri_18?
    Running.mri_19?
    
    # Rubinius
    Running.rbx?
    
    # JRuby
    Running.jruby?
    
    # Windows
    Running.mswin?
    Running.mingw?
    Running.mingw_18?
    Running.mingw_19?
    
TODO
---
- A way to ask which is being run would probably be useful.