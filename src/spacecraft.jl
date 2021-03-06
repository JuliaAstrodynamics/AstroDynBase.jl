abstract type AbstractSpacecraft end
abstract type AbstractModule end

type SimpleSpacecraft <: AbstractSpacecraft
    name::Symbol
    fuel::Float64
    drymass::Float64
    dragcoefficient::Float64
    dragarea::Float64
    reflectivitycoefficient::Float64
    srparea::Float64
end

type Spacecraft <: AbstractSpacecraft
    name::Symbol
    modules::Array{SCModule, 1}
end

struct InertModule <: AbstractModule
    name::Symbol
    drymass::Float64
end
