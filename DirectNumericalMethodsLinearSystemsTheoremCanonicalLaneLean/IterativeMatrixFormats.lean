import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure IterativeMatrixFormat where
  matrixType : Type u
  operatorType : Type v
  preconditionerType : Type w
  formatName : String
  dimensionsCompatible : Prop
  formatNameTerm : formatName = "IterativeMatrixFormat"

definedIterativeMatrixFormatClosed (F : IterativeMatrixFormat) : Prop :=
  F.dimensionsCompatible

theorem iterative_matrix_format_closed (F : IterativeMatrixFormat) :
    definedIterativeMatrixFormatClosed F :=
  F.formatNameTerm.symm ▸ F.dimensionsCompatible

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse