$(document).on 'peek:render', (event, request_id, data) ->
  failed = data.context['delayed-job'].jobs.failed
  $('#delayed_job-jobs-tooltip')
    .attr('title', "failed: #{failed}")
    .tipsy gravity: $.fn.tipsy.autoNS
