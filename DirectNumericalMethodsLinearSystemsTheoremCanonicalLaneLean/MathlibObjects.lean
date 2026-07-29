import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.LinearAlgebra.Matrix.Basic

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlibCore

structure DirectNumericalMethodsSpace where
  matrixType : Type
  fieldStructure : Type
  norm : Type

structure DirectNumericalMethodsAdmittedObject where
  space : DirectNumericalMethodsSpace
  linearSystemWellPosed : Prop
  solverConverges : Prop
  errorBound : Prop
  solutionModel : Type
  conclusion : errorBound

structure DirectNumericalMethodsEndgameState where
  object : DirectNumericalMethodsAdmittedObject

def DirectNumericalMethodsWitnessClosed (O : DirectNumericalMethodsAdmittedObject) : Prop :=
  O.errorBound

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse