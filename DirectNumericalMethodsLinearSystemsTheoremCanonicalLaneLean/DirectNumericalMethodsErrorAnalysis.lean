import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectNumericalMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure ErrorAnalysisPackage where
  forwardErrorBound : Prop
  backwardErrorBound : Prop
  conditionNumberRelated : Prop
  roundoffControlled : Prop

structure ErrorAnalysisEvidence (E : ErrorAnalysisPackage) where
  forwardErrorBoundClosed : E.forwardErrorBound
  backwardErrorBoundClosed : E.backwardErrorBound
  conditionNumberRelatedClosed : E.conditionNumberRelated
  roundoffControlledClosed : E.roundoffControlled

def ErrorAnalysisClosed (E : ErrorAnalysisPackage) : Prop :=
  E.forwardErrorBound ∧ E.backwardErrorBound ∧ E.conditionNumberRelated ∧ E.roundoffControlled

theorem error_analysis_closed_from_evidence (E : ErrorAnalysisPackage)
    (Ev : ErrorAnalysisEvidence E) : ErrorAnalysisClosed E := by
  exact And.intro Ev.forwardErrorBoundClosed
    (And.intro Ev.backwardErrorBoundClosed
      (And.intro Ev.conditionNumberRelatedClosed Ev.roundoffControlledClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse