# Function to find OS
get_os <- function() {
    as.character(Sys.info()["sysname"])
}

# Function to find CPU (MacOS)
get_cpu_macos <- function() {
    specs <- system("sysctl -n machdep.cpu.brand_string hw.ncpu", intern = TRUE)
    cpu = list(model_name = as.character(specs[1]), no_of_cores = as.integer(specs[2]))
    return(cpu)
}

print(get_cpu_macos())
