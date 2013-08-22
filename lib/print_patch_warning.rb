def print_patch_warning(options={})
  raise ArgumentError("print_patch_warning requires a :version argument to be set") unless options[:version]
  raise ArgumentError("print_patch_warning requires a :patch argument to be set") unless options[:patch]
  raise ArgumentError("print_patch_warning requires a :message argument to be set") unless options[:message]

  Kernel.warn(options[:message]) if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new(options[:version]) && RUBY_PATCHLEVEL >= options[:patch].to_i
end