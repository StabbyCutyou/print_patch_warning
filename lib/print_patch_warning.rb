module PrintPatchWarning
  def print_patch_warning(options={}, &blk)
    raise ArgumentError("print_patch_warning requires a :version argument to be set") unless options[:version]
    raise ArgumentError("print_patch_warning requires a :patch argument to be set") unless options[:patch]
  
    past_due = Gem::Version.new(ruby_version) >= Gem::Version.new(options[:version]) && ruby_patch_level >= options[:patch].to_i
    puts "past? #{past_due}"
    Kernel.warn(options[:message]) if past_due && options[:message]
    yield if !past_due && block_given?
    #Don't want to return anything at all...
    nil
  end
  module_function :print_patch_warning

  def ruby_version
    RUBY_VERSION.dup
  end
  module_function :ruby_version

  def ruby_patch_level
    RUBY_PATCHLEVEL
  end
  module_function :ruby_patch_level
end

def print_patch_warning(options={}, &blk)
  PrintPatchWarning.print_patch_warning(options, &blk)
end