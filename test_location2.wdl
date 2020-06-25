workflow test_location {
    call find_tools
}

task find_tools {
    command {
        ls /data/HG38_STAR_INDEX100_ROOT
    }
    output{
        String message = read_string(stdout())
    }
    runtime {
        docker: "g3chen/star:2.0"
    }
}
