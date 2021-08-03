using Test

import Petri
using LabelledArrays
using AlgebraicPetri
using AlgebraicPetri.Epidemiology
using AlgebraicPetri.ModelComparison
using Catlab.Theories
using Catlab.CategoricalAlgebra
using Catlab.CategoricalAlgebra.FinSets
using Catlab.Programs

@testset "Core" begin
    include("core.jl")
end

@testset "Types" begin
    include("types.jl")
end

@testset "Petri" begin
    include("petri.jl")
end

@testset "Epidemiology" begin
    include("epidemiology.jl")
end

@testset "BilayerNetworks" begin
  include("bilayernetworks.jl")
end

@testset "ModelComparison" begin
  include("modelcomparison.jl")
end

if VERSION >= v"1.3.0"
  @testset "Catalyst Tooling" begin
    include("CatalystInterop.jl")
  end
end
