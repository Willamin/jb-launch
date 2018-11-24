class Divclass < Middleman::Extension
  def after_build(builder)
    builder.thor.run './divclass.sh'
  end

  def registered
    included
  end
end

::Middleman::Extensions.register(:divclass, Divclass)


activate :divclass
activate :livereload
