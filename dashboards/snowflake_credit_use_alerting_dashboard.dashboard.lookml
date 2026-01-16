---
- dashboard: snowflake_credit_use_alerting_dashboard
  title: Snowflake Credit Use Alerting Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: q1TczH7OJDbBkIeqKlp8B9
  elements:
  - title: All Warehouse Credit usage by day
    name: All Warehouse Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.start_date]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: ''
    sorts: [warehouse_metering_history.start_date desc]
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 0
    col: 0
    width: 24
    height: 12
  - title: DBT_DS_EVERMERGE Credit Usage by day
    name: DBT_DS_EVERMERGE Credit Usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DBT_DS_EVERMERGE"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 20
    col: 0
    width: 12
    height: 7
  - title: DBT_EDW_WH Credit usage by Day
    name: DBT_EDW_WH Credit usage by Day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DBT_EDW_WH"'
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
      Start Date: warehouse_metering_history.start_date
    row: 27
    col: 8
    width: 8
    height: 6
  - title: Games_WH Credit usage by day
    name: Games_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"GAMES_WH"'
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
      Start Date: warehouse_metering_history.start_date
    row: 27
    col: 0
    width: 8
    height: 6
  - title: Looker_WH Credit usage by day
    name: Looker_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"LOOKER_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 20
    col: 12
    width: 12
    height: 7
  - title: COMPUTE_WH Credit usage by day
    name: COMPUTE_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"COMPUTE_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 33
    col: 8
    width: 8
    height: 6
  - title: COMPUTE_WH Credit usage by day (Copy)
    name: COMPUTE_WH Credit usage by day (Copy)
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"INSIGHTS_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 39
    col: 16
    width: 8
    height: 6
  - title: DBT_SENSORTOWER_WH Credit usage by day
    name: DBT_SENSORTOWER_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DBT_SENSORTOWER_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 45
    col: 16
    width: 8
    height: 6
  - title: All Credit usage by day
    name: All Credit usage by day
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 12
    col: 0
    width: 24
    height: 8
  - title: ALATION_WH Credit usage by day
    name: ALATION_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"ALATION_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 57
    col: 0
    width: 8
    height: 6
  - title: SENSORTOWER_WH Credit usage by day
    name: SENSORTOWER_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"SENSORTOWER_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 51
    col: 16
    width: 8
    height: 6
  - title: TASK_UPDATE_FACT_KPI_DAILY_WH Credit usage by day
    name: TASK_UPDATE_FACT_KPI_DAILY_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"TASK_UPDATE_FACT_KPI_DAILY_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 27
    col: 16
    width: 8
    height: 6
  - title: DEV_EVERMERGE_WH Credit usage by day
    name: DEV_EVERMERGE_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DEV_EVERMERGE_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 33
    col: 0
    width: 8
    height: 6
  - title: BIZ_WH_ADHOC Credit usage by day
    name: BIZ_WH_ADHOC Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"BIZ_WH_ADHOC"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 57
    col: 8
    width: 8
    height: 6
  - title: DBT_EDW_WH Credit usage by day
    name: DBT_EDW_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DBT_EDW_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 33
    col: 16
    width: 8
    height: 6
  - title: ETL_WH Credit usage by day
    name: ETL_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"ETL_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 39
    col: 8
    width: 8
    height: 6
  - title: EVERMERGE_WH CREDIT usage by day
    name: EVERMERGE_WH CREDIT usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"EVERMERGE_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 39
    col: 0
    width: 8
    height: 6
  - title: ULTIMATESURVIVORS_WH Credit usage by day
    name: ULTIMATESURVIVORS_WH Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"ULTIMATESURVIVORS_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 51
    col: 0
    width: 8
    height: 6
  - title: GUMMY Credit usage by day (Copy 2)
    name: GUMMY Credit usage by day (Copy 2)
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"GUMMYDROP_WH_ADHOC","GUMMYDROP_WH","GUMMY_CUSTOM_WH"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 51
    col: 8
    width: 8
    height: 6
  - title: DS_ABTESTING_PROD Credit usage by day
    name: DS_ABTESTING_PROD Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DS_ABTESTING_PROD"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 45
    col: 0
    width: 8
    height: 6
  - title: DS_ABTESTING_DEV Credit usage by day
    name: DS_ABTESTING_DEV Credit usage by day
    model: block_snowflake_usage_v2
    explore: warehouse_metering_history
    type: looker_line
    fields: [warehouse_metering_history.total_credits_used, warehouse_metering_history.warehouse_name,
      warehouse_metering_history.start_date]
    pivots: [warehouse_metering_history.warehouse_name]
    fill_fields: [warehouse_metering_history.start_date]
    filters:
      warehouse_metering_history.warehouse_name: '"DS_ABTESTING_DEV"'
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
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Start Date: warehouse_metering_history.start_date
    row: 45
    col: 8
    width: 8
    height: 6
  filters:
  - name: Start Date
    title: Start Date
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
