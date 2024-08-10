# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `actionpack` gem.
# Please instead update this file by running `bin/tapioca gem actionpack`.

# source://actionpack//lib/action_dispatch/journey/route.rb#3
module ActionDispatch; end

# :stopdoc:
#
# source://actionpack//lib/action_dispatch/journey/route.rb#5
module ActionDispatch::Journey; end

# source://actionpack//lib/action_dispatch/journey/route.rb#6
class ActionDispatch::Journey::Route
  # +path+ is a path constraint.
  # +constraints+ is a hash of constraints to be applied to this route.
  #
  # @return [Route] a new instance of Route
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#56
  def initialize(name:, path:, app: T.unsafe(nil), constraints: T.unsafe(nil), required_defaults: T.unsafe(nil), defaults: T.unsafe(nil), request_method_match: T.unsafe(nil), precedence: T.unsafe(nil), scope_options: T.unsafe(nil), internal: T.unsafe(nil)); end

  # Returns the value of attribute app.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def app; end

  # Returns the value of attribute ast.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def ast; end

  # Returns the value of attribute constraints.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def conditions; end

  # Returns the value of attribute constraints.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def constraints; end

  # Returns the value of attribute defaults.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def defaults; end

  # @return [Boolean]
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#141
  def dispatcher?; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#77
  def eager_load!; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#119
  def format(path_options); end

  # @return [Boolean]
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#137
  def glob?; end

  # Returns the value of attribute internal.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def internal; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#163
  def ip; end

  # @return [Boolean]
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#145
  def matches?(request); end

  # Returns the value of attribute name.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def name; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#114
  def parts; end

  # Returns the value of attribute path.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def path; end

  # Returns the value of attribute precedence.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def precedence; end

  # @return [Boolean]
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#127
  def required_default?(key); end

  # source://actionpack//lib/action_dispatch/journey/route.rb#131
  def required_defaults; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#102
  def required_keys; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#123
  def required_parts; end

  # Needed for `bin/rails routes`. Picks up succinctly defined requirements
  # for a route, for example route
  #
  #   get 'photo/:id', :controller => 'photos', :action => 'show',
  #     :id => /[A-Z]\d{5}/
  #
  # will have {:controller=>"photos", :action=>"show", :id=>/[A-Z]\d{5}/}
  # as requirements.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#92
  def requirements; end

  # @return [Boolean]
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#167
  def requires_matching_verb?; end

  # Returns the value of attribute scope_options.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#7
  def scope_options; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#106
  def score(supplied_keys); end

  # source://actionpack//lib/action_dispatch/journey/route.rb#114
  def segment_keys; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#98
  def segments; end

  # source://actionpack//lib/action_dispatch/journey/route.rb#171
  def verb; end

  private

  # source://actionpack//lib/action_dispatch/journey/route.rb#180
  def match_verb(request); end

  # source://actionpack//lib/action_dispatch/journey/route.rb#176
  def verbs; end

  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#47
    def verb_matcher(verb); end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#12
module ActionDispatch::Journey::Route::VerbMatchers; end

# source://actionpack//lib/action_dispatch/journey/route.rb#34
class ActionDispatch::Journey::Route::VerbMatchers::All
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#35
    def call(_); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#36
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::DELETE
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::GET
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::HEAD
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::LINK
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::OPTIONS
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::PATCH
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::POST
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::PUT
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::TRACE
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#17
class ActionDispatch::Journey::Route::VerbMatchers::UNLINK
  class << self
    # source://actionpack//lib/action_dispatch/journey/route.rb#19
    def call(req); end

    # source://actionpack//lib/action_dispatch/journey/route.rb#18
    def verb; end
  end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#24
class ActionDispatch::Journey::Route::VerbMatchers::Unknown
  # @return [Unknown] a new instance of Unknown
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#27
  def initialize(verb); end

  # source://actionpack//lib/action_dispatch/journey/route.rb#31
  def call(request); end

  # Returns the value of attribute verb.
  #
  # source://actionpack//lib/action_dispatch/journey/route.rb#25
  def verb; end
end

# source://actionpack//lib/action_dispatch/journey/route.rb#13
ActionDispatch::Journey::Route::VerbMatchers::VERBS = T.let(T.unsafe(nil), Array)

# source://actionpack//lib/action_dispatch/journey/route.rb#39
ActionDispatch::Journey::Route::VerbMatchers::VERB_TO_CLASS = T.let(T.unsafe(nil), Hash)