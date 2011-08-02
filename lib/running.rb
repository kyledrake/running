require 'rbconfig'
module Running
  WINDOWS = RbConfig::CONFIG["host_os"] =~ %r!(msdos|mswin|djgpp|mingw)!

  class << self
    def ruby?
      !mswin? && (!defined?(RUBY_ENGINE) || RUBY_ENGINE == "ruby" || RUBY_ENGINE == "rbx")
    end

    def ruby_18?
      ruby? && RUBY_VERSION < "1.9"
    end

    def ruby_19?
      ruby? && RUBY_VERSION >= "1.9"
    end

    def mri?
      !mswin? && (!defined?(RUBY_ENGINE) || RUBY_ENGINE == "ruby")
    end

    def mri_18?
      mri? && RUBY_VERSION < "1.9"
    end

    def mri_19?
      mri? && RUBY_VERSION >= "1.9"
    end

    def rbx?
      ruby? && !defined?(RUBY_ENGINE).nil? && RUBY_ENGINE == "rbx"
    end

    def jruby?
      !defined?(RUBY_ENGINE).nil? && RUBY_ENGINE == "jruby"
    end

    def mswin?
      !WINDOWS.nil?
    end

    def mingw?
      !WINDOWS.nil? && Gem::Platform.local.os == "mingw32"
    end

    def mingw_18?
      mingw? && RUBY_VERSION < "1.9"
    end

    def mingw_19?
      mingw? && RUBY_VERSION >= "1.9"
    end
  end
end