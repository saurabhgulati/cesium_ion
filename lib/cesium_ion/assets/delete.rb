module CesiumIon
  module Assets
    class Delete < CesiumIon::Base

      Params = Struct.new(
        :asset_id,
        keyword_init: true
      )

      def initialize params={}
        super()
        @params = Params.new(params)
      end

      def process_response response
        @response_data = JSON.parse(response)&.with_indifferent_access
      end

      def validate
        @errors['asset_id'] << 'Can\'t be blank' if @params.asset_id.to_s.empty?
      end

      private

      def api_path
        "/assets/#{@params.asset_id}"
      end

      def request_type
        'DELETE'
      end
    end
  end
end
