workflow test_location {
    call find_tools
}

task find_tools {
    command {
        ls $JAVA_ROOT
        echo "@@@@@@@@@@@@@@@@"
        ls $PICARD_ROOT
        echo "@@@@@@@@@@@@@@@@"
        ls $STAR_ROOT
        echo "@@@@@@@@@@@@@@@@"

        echo $PATH
        echo "################"
        echo $MANPATH
        echo "################"
        echo $LD_LIBRARY_PATH
        echo "################"
    }
    output{
        String message = read_string(stdout())
    }
    runtime {
        docker: "g3chen/star:1.0"
    }
}
