import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectLinearSystemMatrixAssembly

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure ErrorAnalysisResidualPackage (n : Nat) (M : MatrixAssemblyPackage n) where
  residualNormBound : Prop
  backwardErrorBound : Prop
  forwardErrorBound : Prop
  conditionNumberEstimate : Prop

structure ErrorAnalysisResidualEvidence (n : Nat) (M : MatrixAssemblyPackage n)
    (E : ErrorAnalysisResidualPackage n M) where
  residualNormBoundClosed : E.residualNormBound
  backwardErrorBoundClosed : E.backwardErrorBound
  forwardErrorBoundClosed : E.forwardErrorBound
  conditionNumberEstimateClosed : E.conditionNumberEstimate

def ErrorAnalysisResidualClosed (n : Nat) (M : MatrixAssemblyPackage n)
    (E : ErrorAnalysisResidualPackage n M) : Prop :=
  E.residualNormBound ∧ E.backwardErrorBound ∧ E.forwardErrorBound ∧ E.conditionNumberEstimate

theorem error_analysis_residual_closed_from_evidence
    (n : Nat) (M : MatrixAssemblyPackage n) (E : ErrorAnalysisResidualPackage n M)
    (Ev : ErrorAnalysisResidualEvidence n M E) :
    ErrorAnalysisResidualClosed n M E := by
  exact And.intro Ev.residualNormBoundClosed
    (And.intro Ev.backwardErrorBoundClosed
      (And.intro Ev.forwardErrorBoundClosed Ev.conditionNumberEstimateClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse