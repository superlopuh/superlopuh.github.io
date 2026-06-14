CV_PDF := Sasha Lopoukhine CV.pdf

Sasha\ Lopoukhine\ CV.pdf: cv.typ cv_helpers.typ dodeka/screenshot_old.png
	typst compile cv.typ "$(CV_PDF)"

.PHONY: cv
cv: Sasha\ Lopoukhine\ CV.pdf
