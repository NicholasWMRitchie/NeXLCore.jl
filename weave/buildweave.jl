using Weave

let start_dir = pwd()
    cd(@__DIR__)
    outpath = normpath(joinpath(@__DIR__, "..", "docs", "build"))
    @show outpath
    if !isdirpath(outpath)
        mkpath(outpath)
    end

    weave(joinpath(@__DIR__, "gettingstarted.jmd"), out_path=joinpath(outpath, "gettingstarted.html"))
    weave(joinpath(@__DIR__, "OByStoic.jmd"), out_path=joinpath(outpath, "OByStoic.html"))
    weave(joinpath(@__DIR__, "fluoryield.jmd"), out_path=joinpath(outpath, "fluoryield.html"))
    weave(joinpath(@__DIR__, "meanionizationpotential.jmd"), out_path=joinpath(outpath, "meanionizationpotential.html"))

    cd(start_dir)
end
