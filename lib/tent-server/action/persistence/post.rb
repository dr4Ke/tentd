module Tent
  module Server
    module Action
      module Persistence
        class Post
          def initialize(app, options={})
            @app, @options = app, options
          end

          def call(env)
            env['tent.post'] = ::Tent::Server::Post.find(env['post_id'])
            @app.call(env)
          end
        end
      end
    end
  end
end