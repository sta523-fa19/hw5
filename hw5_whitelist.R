allowed_files <- c("hw5.Rmd",
                  "hw5.md",
                  "get_wawa.R",
                  "parse_wawa.R",
                  "get_sheetz.R",
                  "parse_sheetz.R",
                  "README.md",
                  "wercker.yml",
                  "hw5.Rproj",
                  "hw5_whitelist.R",
                  "Makefile",
                  "hw5.css",
                  "data",
                  "fuel_war.jpg",
                  ".gitignore")

files <- dir()
disallowed_files <- files[!(files %in% allowed_files)]

if (length(disallowed_files != 0)) {
  cat("Disallowed files found:\n")
  cat("  (remove the following files from your repo)\n\n")

  for (file in disallowed_files)
    cat("*", file, "\n")

  quit("no", 1, FALSE)
}
