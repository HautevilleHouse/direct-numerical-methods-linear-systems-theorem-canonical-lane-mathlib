import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure PreconditionerDesignPackage where
  preconditionerType : Type
  conditionNumberReduction : Prop
  spectralClustering : Prop
  factorizability : Prop
  stabilityUnderInversion : Prop

structure PreconditionerDesignEvidence
    (P : PreconditionerDesignPackage) where
  conditionNumberReductionClosed : P.conditionNumberReduction
  spectralClusteringClosed : P.spectralClustering
  factorizabilityClosed : P.factorizability
  stabilityUnderInversionClosed : P.stabilityUnderInversion

def PreconditionerDesignClosed
    (P : PreconditionerDesignPackage) : Prop :=
  P.conditionNumberReduction ∧ P.spectralClustering ∧
  P.factorizability ∧ P.stabilityUnderInversion

theorem preconditioner_design_closed_from_evidence
    (P : PreconditionerDesignPackage)
    (E : PreconditionerDesignEvidence P) :
    PreconditionerDesignClosed P := by
  exact And.intro E.conditionNumberReductionClosed
    (And.intro E.spectralClusteringClosed
      (And.intro E.factorizabilityClosed
        E.stabilityUnderInversionClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse