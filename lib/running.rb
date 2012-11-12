require 'rbconfig'
module Running
  WINDOWS = RbConfig::CONFIG["host_os"] =~ %r!(msdos|mswin|djgpp|mingw)!

  class << self
    def ruby?
      !mswin? && (!defined?(RUBY_ENGINE) || RUBY_ENGINE == "ruby" || RUBY_ENGINE == "rbx" || RUBY_ENGINE == "maglev")
    end

    def ruby_18?
      ruby? && ruby_version_matches(1.8)
    end

    def ruby_19?
      ruby? && ruby_version_matches(1.9)
    end

    def ruby_20?
      ruby? && ruby_version_matches(2.0)
    end

    def mri?
      !mswin? && (!defined?(RUBY_ENGINE) || RUBY_ENGINE == "ruby")
    end

    def mri_18?
      mri? && ruby_version_matches(1.8)
    end

    def mri_19?
      mri? && ruby_version_matches(1.9)
    end

    def rbx?
      ruby? && !defined?(RUBY_ENGINE).nil? && RUBY_ENGINE == "rbx"
    end

    def maglev?
      ruby? && !defined?(RUBY_ENGINE).nil? && RUBY_ENGINE == "maglev"
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
      mingw? && ruby_version_matches(1.8)
    end

    def mingw_19?
      mingw? && ruby_version_matches(1.9)
    end

    def mingw_20?
      mingw? && ruby_version_matches(2.0)
    end

    def from_the_police?
      true
    end

    private

    def ruby_version_matches(version)
      !(RUBY_VERSION =~ /^#{version}/).nil?
    end
  end
end