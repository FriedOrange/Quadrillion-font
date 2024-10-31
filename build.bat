@rem generate intermediate UFO sources
sfd2ufo source\QuadrillionMonoline-Regular.sfd source\QuadrillionMonoline-Regular.ufo
@REM copy source\features-monoline.fea source\QuadrillionMonoline-Regular.ufo\features.fea

@rem build OpenType fonts
@cd source
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-builder.py QuadrillionMonoline.yaml
@cd ..

@rem generate proof documents
@cd fonts\ttf
set PYTHONUTF8=1
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-gen-html.py proof -o ..\proof QuadrillionMonoline-Regular.ttf
@cd ..\..