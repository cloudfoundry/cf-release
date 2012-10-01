# Copyright (c) 2009-2012 VMware, Inc.

module Collector
  REPORT_PROCESSOR_COMPONENT = "ReportProcessor"

  class Handler
    class ReportProcessor < BillingHandler
      register REPORT_PROCESSOR_COMPONENT

      def process(varz)
        super(varz)
      end
    end
  end
end
