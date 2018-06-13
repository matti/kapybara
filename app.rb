require "sinatra/base"

module Web
  def self.start!
    webapp = Sinatra.new do
      root_path = File.join(File.dirname(__FILE__), "..", "public")

      set :root, root_path
      set :public_folder, "public"

      get '/' do
        File.read(File.join(root_path, "index.html"))
      end
    end

    Thread.new do
      webapp.run!
    end

    sleep 1
  end
end
