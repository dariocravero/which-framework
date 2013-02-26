module WhichFramework
  def self.which_is_it?(path='.')
    if is_padrino?(path)
      :padrino
    elsif is_rails?(path)
      :rails
    elsif is_sinatra?(path)
      :sinatra
    else
      :dont_know
    end
  end

  def self.is_padrino?(path='.')
    find :padrino, files(path, [File.join('config', 'boot.rb')])
  end

  def self.is_rails?(path='.')
    find :rails, files(path, [File.join('config', 'application.rb')])
  end

  def self.is_sinatra?(path='.')
    find :sinatra, files(path, ['*.rb'])
  end

  private
    def self.find(framework, files=[])
      files.each do |file|
        if File.exists?(file)
          return true if File.read(file).index(/#{framework}/i)
        end
      end
      return false
    end

    def self.files(path, list)
      list.map { |f| Dir[File.join(path, f)] }.flatten
    end
end
