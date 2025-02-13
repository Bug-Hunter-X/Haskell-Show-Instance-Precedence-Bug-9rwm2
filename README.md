# Haskell Show Instance Precedence Bug

This repository demonstrates a subtle bug related to the precedence levels used in custom `Show` instances in Haskell.  The `bug.hs` file contains code with the error, while `bugSolution.hs` provides the corrected version.

The issue revolves around the use of `showsPrec` in the custom `Show` instance for the `Point` data type. Incorrect precedence handling can lead to unexpected output.

The solution showcases the proper handling of precedence to ensure correct formatting.
