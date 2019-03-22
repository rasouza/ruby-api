module APIv1
  class Base < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    helpers do
      def return_no_content_status
        status :no_content
        ''
      end
    end

    mount APIv1::Products

  end
end

