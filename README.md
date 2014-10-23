TemplePictureProj3
==================

iOS Swift App.  Project 3 of my iOS development class in which pictures of LDS temples are shown and the user tries to guess the location of the temple.

Requirements
==================

1. Write a flashcard app that displays temple photos in a collection view, temple names in a table view, and lets users select a temple photo and the corresponding name of that temple.
2. Display a border of some kind around each temple photo.
3. When the user makes a valid match, remove those elements from the corresponding
collection and table views.
4. Keep track of how many correct and incorrect matches the user makes, and display
their current correct/incorrect tallies.
5. Display a “correct” or “incorrect” message when the user attempts a match.
6. Provide a “reset” button that clears the tallies and loads all photos and temple names
like it was when the app first launched.
7. Also include a “study” mode that does not display a separate list of temple names, but
instead lists temple names on top of the corresponding photos. This mode should only display a collection view of temple image cards that the user can scroll through so he or she can study the temple photos. The user shouldn’t be able to select photos in this mode.
8. Display all temple photos at a fixed height, but preserve the image perspective. So different photos might have a different width.
9. Do not use a tab bar controller to move between “study” and “match” modes. Instead, provide a button (e.g. labeled “Study” while in match mode, or “Match” while in study mode) that reconfigures your MVC. Provide smooth animation of the UI configuration changes. In study mode the reset button should be disabled and there should be no separate list of temple names.
