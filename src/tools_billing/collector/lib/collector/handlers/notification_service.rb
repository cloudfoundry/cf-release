# Copyright (c) 2009-2012 VMware, Inc.

module Collector

  class Handler
    class NotificationService < BillingHandler
      register NOTIFICATION_SERVICE_COMPONENT

      def process(varz)
        super(varz)
      end
    end
  end
end
