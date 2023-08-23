SELECT 
  invoice_items.id, 
  invoice_items.unit_price,
  invoice_items.quantity,
  treatments.name AS treatment_name,
  invoices.total_amount 
FROM invoice_items
JOIN invoices ON invoice_items.invoice_id = invoices.id
JOIN treatments ON invoice_items.treatment_id = treatments.id;