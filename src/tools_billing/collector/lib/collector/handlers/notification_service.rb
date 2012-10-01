# Copyright (c) 2009-2012 VMware, Inc.

module Collector
  NOTIFICATION_SERVICE_COMPONENT = "NotificationService"

  class Handler
    class NotificationService < Handler
      register NOTIFICATION_SERVICE_COMPONENT

      def process(varz)
        simple_metrics = %w(requests success cpu uptime)
        simple_metrics.each do |metric|
          send_metric("billing.#{metric}", varz[metric])
        end
        if varz['errors']
          varz['errors'].each do |error_id, count|
            send_metric("billing.errors.#{error_id}", count)
          end
        end
      end
    end
  end
end
