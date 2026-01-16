---
- dashboard: snowflake_credit_monitoring
  title: Snowflake Credit Monitoring
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: NpUFdpT86UOowMiNEhNmIp
  elements:
  - title: What is our credit usage by Month?
    name: What is our credit usage by Month?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_column
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_month]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_month]
    sorts: [warehouse_metering_history.warehouse_name, warehouse_metering_history.start_month
        desc]
    limit: 500
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: 44596d66-8a4e-463a-84d4-cd5a05aaf752
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: COMPUTE_WH - warehouse_metering_history.total_credits_used,
            id: COMPUTE_WH - warehouse_metering_history.total_credits_used, name: COMPUTE_WH},
          {axisId: LOOKER_WH - warehouse_metering_history.total_credits_used, id: LOOKER_WH
              - warehouse_metering_history.total_credits_used, name: LOOKER_WH}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      COMPUTE_WH - warehouse_metering_history.total_credits_used: "#3EB0D5"
      LOOKER_WH - warehouse_metering_history.total_credits_used: "#184EA0"
    reference_lines: []
    defaults_version: 1
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 19
    col: 0
    width: 8
    height: 14
  - title: What is our credit usage by day?
    name: What is our credit usage by day?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_column
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    sorts: [warehouse_metering_history.warehouse_name, warehouse_metering_history.start_date
        desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: 44596d66-8a4e-463a-84d4-cd5a05aaf752
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: COMPUTE_WH - warehouse_metering_history.total_credits_used,
            id: COMPUTE_WH - warehouse_metering_history.total_credits_used, name: COMPUTE_WH},
          {axisId: LOOKER_WH - warehouse_metering_history.total_credits_used, id: LOOKER_WH
              - warehouse_metering_history.total_credits_used, name: LOOKER_WH}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      COMPUTE_WH - warehouse_metering_history.total_credits_used: "#3EB0D5"
      LOOKER_WH - warehouse_metering_history.total_credits_used: "#184EA0"
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 10
    col: 0
    width: 12
    height: 9
  - title: Which warehouses use the most credits in the current four weeks?
    name: Which warehouses use the most credits in the current four weeks?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_column
    fields: [warehouse_metering_history.warehouse_name, warehouse_metering_history.current_four_weeks_credits_used]
    filters:
      warehouse_metering_history.current_four_weeks_credits_used: ">0"
    sorts: [warehouse_metering_history.current_four_weeks_credits_used desc]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: warehouse_metering_history.total_credits_used,
            id: warehouse_metering_history.total_credits_used, name: Total Credits
              Used}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_colors:
      warehouse_metering_history.total_credits_used: "#72C5D4"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 19
    col: 8
    width: 8
    height: 14
  - title: How many Queries do we run by warehouse?
    name: How many Queries do we run by warehouse?
    model: block_snowflake_usage_v2
    explore: query_history
    type: looker_column
    fields: [query_history.warehouse_name, query_history.current_four_weeks_query_count]
    filters:
      query_history.current_four_weeks_query_count: ">0"
    sorts: [query_history.current_four_weeks_query_count desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: [{label: Job Count, orientation: left, series: [{axisId: query_history.query_count,
            id: query_history.query_count, name: Query Count}], showLabels: false,
        showValues: false, maxValue: !!null '', minValue: !!null '', valueFormat: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Query History Start Date: query_history.start_date
    row: 81
    col: 0
    width: 12
    height: 14
  - title: Which queries have the most execution time?
    name: Which queries have the most execution time?
    model: block_snowflake_usage_v2
    explore: query_history
    type: looker_bar
    fields: [query_history.warehouse_name, query_history.user_name, query_history.role_name,
      query_history.looker_user_id, query_history.total_execution_time, query_history.total_queued_overload_time,
      query_history.total_transaction_blocked_time, warehouse_metering_history.total_credits_used]
    filters:
      query_history.total_execution_time: ">100"
    sorts: [query_history.total_execution_time desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [query_history.total_queued_overload_time, query_history.total_transaction_blocked_time,
      query_history.role_name, query_history.looker_user_id, warehouse_metering_history.total_credits_used]
    listen:
      Query History Start Date: query_history.start_date
    row: 33
    col: 0
    width: 12
    height: 14
  - title: What are our most expensive queries by warehouse, user name and Looker
      ID?
    name: What are our most expensive queries by warehouse, user name and Looker ID?
    model: block_snowflake_usage_v2
    explore: query_history
    type: looker_bar
    fields: [query_history.warehouse_name, query_history.user_name, query_history.looker_user_id,
      query_history.total_execution_time, query_history.total_queued_overload_time,
      query_history.total_transaction_blocked_time, warehouse_metering_history.total_credits_used]
    filters:
      query_history.total_execution_time: ">100"
    sorts: [warehouse_metering_history.total_credits_used desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [query_history.total_queued_overload_time, query_history.total_transaction_blocked_time,
      query_history.total_execution_time]
    listen:
      Query History Start Date: query_history.start_date
    row: 33
    col: 12
    width: 12
    height: 14
  - title: Which tables have the most errors?
    name: Which tables have the most errors?
    model: block_snowflake_usage_v2
    explore: load_history
    type: looker_grid
    fields: [load_history.total_error_count, load_history.total_row_count, load_history.schema_name,
      load_history.table_name]
    filters:
      load_history.total_error_count: ">0"
    sorts: [load_history.total_error_count desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 95
    col: 0
    width: 12
    height: 7
  - title: Which Warehouse has the largest Billable? (TB Detail view)
    name: Which Warehouse has the largest Billable? (TB Detail view)
    model: block_snowflake_usage_v2
    explore: storage_usage
    type: looker_grid
    fields: [storage_usage.database_name, storage_usage.billable_tb, storage_usage.count,
      storage_usage.current_four_weeks_billable_tb, storage_usage.prior_four_weeks_billable_tb]
    filters:
      storage_usage.current_four_weeks_billable_tb: ">.001"
    sorts: [storage_usage.billable_tb desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: |
        if(
          ${storage_usage.current_four_weeks_billable_tb} - ${storage_usage.prior_four_weeks_billable_tb} >= 0,
          ${storage_usage.current_four_weeks_billable_tb} - ${storage_usage.prior_four_weeks_billable_tb},
          null
        )
      label: Current > than Prior Month
      value_format: '0'
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: current_than_prior_month
      _type_hint: number
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 67
    col: 0
    width: 12
    height: 14
  - title: Which Warehouses are using more credit this month vs last month?
    name: Which Warehouses are using more credit this month vs last month?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_grid
    fields: [warehouse_metering_history.warehouse_name, warehouse_metering_history.current_four_weeks_credits_used,
      warehouse_metering_history.prior_four_weeks_credits_used]
    filters:
      warehouse_metering_history.warehouse_name: ''
    sorts: [current_credit_use_prior desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: 'if(${warehouse_metering_history.current_four_weeks_credits_used}
        > ${warehouse_metering_history.prior_four_weeks_credits_used}, "yes", "no")

        '
      label: Current credit use > prior
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: current_credit_use_prior
      _type_hint: string
    - category: table_calculation
      expression: |
        if(
          ${warehouse_metering_history.current_four_weeks_credits_used} - ${warehouse_metering_history.prior_four_weeks_credits_used} >= 0,
          ${warehouse_metering_history.current_four_weeks_credits_used} - ${warehouse_metering_history.prior_four_weeks_credits_used},
          null
        )
      label: How much more Credit we are using this month
      value_format: '0.'
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: how_much_more_credit_we_are_using_this_month
      _type_hint: number
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 47
    col: 12
    width: 11
    height: 20
  - title: Are we using more credits this month than last month?
    name: Are we using more credits this month than last month?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_column
    fields: [warehouse_metering_history.warehouse_name, warehouse_metering_history.prior_four_weeks_credits_used,
      warehouse_metering_history.current_four_weeks_credits_used]
    filters:
      warehouse_metering_history.warehouse_name: ''
    sorts: [warehouse_metering_history.prior_four_weeks_credits_used desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 9
    col: 16
    width: 8
    height: 14
  - title: Which Warehouses have more storage cost than last month?
    name: Which Warehouses have more storage cost than last month?
    model: block_snowflake_usage_v2
    explore: storage_usage
    type: looker_grid
    fields: [storage_usage.database_name, storage_usage.billable_tb, storage_usage.count,
      storage_usage.current_four_weeks_billable_tb, storage_usage.prior_four_weeks_billable_tb]
    filters:
      storage_usage.current_four_weeks_billable_tb: ">.001"
    sorts: [current_than_prior_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: |
        if(
          ${storage_usage.current_four_weeks_billable_tb} - ${storage_usage.prior_four_weeks_billable_tb} >= 0,
          ${storage_usage.current_four_weeks_billable_tb} - ${storage_usage.prior_four_weeks_billable_tb},
          null
        )
      label: Current > than Prior Month
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: current_than_prior_month
      _type_hint: number
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 67
    col: 12
    width: 12
    height: 14
  - title: What is our credit usage by Warehouse?
    name: What is our credit usage by Warehouse?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: ''
    sorts: [warehouse_metering_history.total_credits_used desc 0, warehouse_metering_history.warehouse_name]
    limit: 1000
    column_limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#030303",
        line_value: '410'}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 0
    col: 12
    width: 12
    height: 9
  - title: Which Warehouse has the largest Billable TB?
    name: Which Warehouse has the largest Billable TB?
    model: block_snowflake_usage_v2
    explore: storage_usage
    type: looker_bar
    fields: [storage_usage.database_name, storage_usage.billable_tb]
    filters:
      storage_usage.current_four_weeks_billable_tb: ">.001"
    sorts: [storage_usage.billable_tb desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: |
        if(
          ${storage_usage.current_four_weeks_billable_tb} - ${storage_usage.prior_four_weeks_billable_tb} >= 0,
          ${storage_usage.current_four_weeks_billable_tb} - ${storage_usage.prior_four_weeks_billable_tb},
          null
        )
      label: Current > than Prior Month
      value_format: '0'
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: current_than_prior_month
      _type_hint: number
      is_disabled: true
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 47
    col: 0
    width: 12
    height: 20
  - title: How much credit do we use by Warehouse?
    name: How much credit do we use by Warehouse?
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_column
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name]
    filters:
      warehouse_metering_history.warehouse_name: ''
      warehouse_metering_history.total_credits_used: ''
    sorts: [warehouse_metering_history.total_credits_used desc]
    limit: 1000
    column_limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#030303",
        line_value: '410'}]
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 81
    col: 12
    width: 12
    height: 14
  - title: IP’s that can’t log in Security report
    name: IP’s that can’t log in Security report
    model: block_snowflake_usage_v2
    explore: login_history
    type: looker_bar
    fields: [login_history.login_failure_rate, login_history.logins, login_history.total_failed_logins,
      login_history.client_ip, login_history.user_name]
    filters:
      login_history.login_failure_rate: ''
      login_history.total_failed_logins: ">1"
      login_history.event_date: 1 months
    sorts: [login_history.total_failed_logins desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [login_history.logins]
    listen: {}
    row: 95
    col: 12
    width: 12
    height: 7
  - title: Credit use and query time correlation
    name: Credit use and query time correlation
    model: block_snowflake_usage_v2
    explore: query_history
    type: looker_scatter
    fields: [query_history.warehouse_name, query_history.user_name, query_history.looker_user_id,
      query_history.total_execution_time, warehouse_metering_history.total_credits_used]
    filters:
      warehouse_metering_history.total_credits_used: ">50"
    sorts: [warehouse_metering_history.total_credits_used desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: '', orientation: left, series: [{axisId: query_history.total_execution_time,
            id: query_history.total_execution_time, name: Total Execution Time}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: warehouse_metering_history.total_credits_used, id: warehouse_metering_history.total_credits_used,
            name: Total Credits Used}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields:
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    minimum_column_width: 75
    series_column_widths:
      query_history.looker_user_id: 117
    listen:
      Query History Start Date: query_history.start_date
    row: 102
    col: 0
    width: 24
    height: 8
  - title: Credit usage by Query and user
    name: Credit usage by Query and user
    model: block_snowflake_usage_v2
    explore: query_history
    type: looker_line
    fields: [query_history.warehouse_name, query_history.user_name, query_history.looker_user_id,
      query_history.total_execution_time, query_history.total_queued_overload_time,
      query_history.total_transaction_blocked_time, warehouse_metering_history.total_credits_used,
      query_history.start_date]
    pivots: [query_history.looker_user_id, query_history.user_name, query_history.warehouse_name]
    filters:
      query_history.total_execution_time: ">100"
    sorts: [warehouse_metering_history.total_credits_used desc 0, query_history.looker_user_id,
      query_history.user_name, query_history.warehouse_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [query_history.total_queued_overload_time, query_history.total_transaction_blocked_time,
      query_history.total_execution_time]
    listen:
      Query History Start Date: query_history.start_date
    row: 110
    col: 0
    width: 24
    height: 10
  - title: Credit usage trend
    name: Credit usage trend
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.start_date]
    fill_fields: [warehouse_metering_history.start_date]
    sorts: [warehouse_metering_history.start_date desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: 44596d66-8a4e-463a-84d4-cd5a05aaf752
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: COMPUTE_WH - warehouse_metering_history.total_credits_used,
            id: COMPUTE_WH - warehouse_metering_history.total_credits_used, name: COMPUTE_WH},
          {axisId: LOOKER_WH - warehouse_metering_history.total_credits_used, id: LOOKER_WH
              - warehouse_metering_history.total_credits_used, name: LOOKER_WH}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      COMPUTE_WH - warehouse_metering_history.total_credits_used: "#3EB0D5"
      LOOKER_WH - warehouse_metering_history.total_credits_used: "#184EA0"
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Block usage Start Date: warehouse_metering_history.start_date
    row: 120
    col: 0
    width: 12
    height: 9
  - type: extension
    extension_id: dashboard-summarization-extension::dashboard-summarization
    title: Dashboard Insights Powered by Vertex AI
    name: Dashboard Insights Powered by Vertex AI
    row: 0
    col: 0
    width: 12
    height: 10
  filters:
  - name: Block usage Start Date
    title: Block usage Start Date
    type: field_filter
    default_value: 14 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    listens_to_filters: []
    field: warehouse_metering_history.start_date
  - name: Query History Start Date
    title: Query History Start Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: block_snowflake_usage_v2
    explore: query_history
    listens_to_filters: []
    field: query_history.start_date
