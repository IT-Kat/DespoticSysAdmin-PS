# Export-and-compare-AD-Users

Branch wherein I am writing a script to export a CSV of enabled AD users (only certain properties) and save it to CSV, from both Source and Destination Domains.

Intention is to be able to compare these two CSVs, pick the unique users in Source.csv, export to Diff.csv, and then batch create the users in the new Destination Domain.
