# Define the list of pages to redirect
pages <- c(
  # Learning R Section
  "1.installing_r", "2.r_projects", "3.packages_functions", "4.readingdata_datatypes",
  "5.datacleaning_pipe", "6.select_filter", "7.mutate", "8.groupby_summarize",
  "9.arrange_writecsv", "10.joins", "11.pivoting", "12.ggplot", "13.stringr",
  "14.lubridate", "15.apis", "16.tidycensus", "17.sf",
  
  # QGIS Section
  "18.qgis_setup", "19.adding_spatial_layers", "20.intro_crs", "21.geocoding",
  "22.spatial_csv", "23.tabular_joins", "24.calculate_field", "25.choropleth",
  "26.basemaps_points", "27.print_layout_export", "28.symbols_by_size", "29.select",
  "30.geoprocessing", "31.join_by_location", "32.points_in_polygon", "33.labeling",
  "34.isochrones_areas", "35.inset_maps", "36.heatmaps", "37.dot_density"
)

# Directory where redirect files will be saved
output_dir <- "learning_R"
dir.create(output_dir, showWarnings = FALSE)

# Generate HTML files for each page
for (page in pages) {
  file_content <- sprintf(
    '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; url=\'/urpl_1620_tutorials/%s.html\'">
    <title>Redirecting...</title>
</head>
<body>
    <p>If you are not redirected, <a href="/urpl_1620_tutorials/%s.html">click here</a>.</p>
</body>
</html>',
    page, page
  )
  
  # Write to the output file
  writeLines(file_content, file.path(output_dir, paste0(page, ".html")))
}
