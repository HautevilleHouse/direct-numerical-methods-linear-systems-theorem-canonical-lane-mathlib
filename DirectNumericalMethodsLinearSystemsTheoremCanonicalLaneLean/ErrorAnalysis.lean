import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.StabilityTheory

/-!
# Error Analysis Package
-/

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure ErrorAnalysisPackage {M : MatrixRepresentationPackage}
    {P : PreconditionerPackage M} {D : DirectSolverPackage P}
    {R : IterativeRefinementPackage D} (E : DecompositionMethodsPackage R) where
  forwardErrorBound : Prop
  backwardErrorBound : Prop
  residualEstimate : Prop
  conditionNumberEffect : Prop
  roundingErrorModel : Prop

structure ErrorAnalysisEvidence {M : MatrixRepresentationPackage}
    {P : PreconditionerPackage M} {D : DirectSolverPackage P}
    {R : IterativeRefinementPackage D} {E : DecompositionMethodsPackage R}
    (A : ErrorAnalysisPackage E) where
  forwardErrorBoundClosed : A.forwardErrorBound
  backwardErrorBoundClosed : A.backwardErrorBound
  residualEstimateClosed : A.residualEstimate
  conditionNumberEffectClosed : A.conditionNumberEffect
  roundingErrorModelClosed : A.roundingErrorModel

def ErrorAnalysisClosed {M : MatrixRepresentationPackage}
    {P : PreconditionerPackage M} {D : DirectSolverPackage P}
    {R : IterativeRefinementPackage D} {E : DecompositionMethodsPackage R}
    (A : ErrorAnalysisPackage E) : Prop :=
  A.forwardErrorBound ∧ A.backwardErrorBound ∧
  A.residualEstimate ∧ A.conditionNumberEffect ∧
  A.roundingErrorModel

theorem error_analysis_closed_from_evidence
    {M : MatrixRepresentationPackage} {P : PreconditionerPackage M}
    {D : DirectSolverPackage P} {R : IterativeRefinementPackage D}
    {E : DecompositionMethodsPackage R} (A : ErrorAnalysisPackage E)
    (Ev : ErrorAnalysisEvidence A) : ErrorAnalysisClosed A := by
  exact And.intro Ev.forwardErrorBoundClosed
    (And.intro Ev.backwardErrorBoundClosed
      (And.intro Ev.residualEstimateClosed
        (And.intro Ev.conditionNumberEffectClosed Ev.roundingErrorModelClosed)))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse