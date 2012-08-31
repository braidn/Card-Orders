Fabricator(:total) do
  freight_cost_cents 200
  quantity 1
  separate_freight 'stuff'
  margin 0.1
  desired_m_cents 200
  selected 'stuff'
  product_id 1
end
