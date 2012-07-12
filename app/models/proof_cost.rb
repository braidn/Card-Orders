class ProofCost < ActiveRecord::Base
  validates :proofDescription, :presence => true
  validates :proofCastId, :numericality => true
end
