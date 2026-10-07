# Distribution conventions

This public tap distributes multiple products. Preserve existing formulas/casks and keep shared repository metadata product-neutral.

Portico is binary-only here: publish reviewed, signed/notarized DMGs and checksums under `portico-vVERSION`; the cask must pin the exact public artifact SHA-256. Application source, signing material, private test fixtures, and operational receipts do not belong in this repository or its release assets. Public release records and feedback use the `Portico:` title prefix; the canonical product page is https://www.paulwelty.com/apps/portico/.

Publication is not installation qualification. Validate an actual Homebrew install/launch separately from cask syntax and anonymous artifact hash checks. Keep platform qualification and experimental release status explicit; unscheduled backlog does not promise new features or dates.
