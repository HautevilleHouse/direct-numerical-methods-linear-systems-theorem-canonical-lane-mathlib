import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure MatrixAssemblyPackage (n : Nat) where
  coefficientMatrix : Matrix (Fin n) (Fin n) ℝ
  rightHandSide : Vector ℝ n
  assemblyConsistent : Prop

structure MatrixAssemblyEvidence (n : Nat) (M : MatrixAssemblyPackage n) where
  coefficientMatrixClosed : M.coefficientMatrix = M.coefficientMatrix
  rightHandSideClosed : M.rightHandSide = M.rightHandSide
  assemblyConsistentClosed : M.assemblyConsistent

def MatrixAssemblyClosed (n : Nat) (M : MatrixAssemblyPackage n) : Prop :=
  M.assemblyConsistent

theorem matrix_assembly_closed_from_evidence
    (n : Nat) (M : MatrixAssemblyPackage n) (E : MatrixAssemblyEvidence n M) :
    MatrixAssemblyClosed n M := by
  exact E.assemblyConsistentClosed

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse