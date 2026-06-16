@echo off
setlocal enabledelayedexpansion

for %%F in (*.*) do (

    rem Don't move this batch file
    if /I not "%%~nxF"=="%~nx0" (

        set "ext=%%~xF"
        set "ext=!ext:~1!"

        if "!ext!"=="" (
            set "folder=Unknown\Miscellaneous\No_Extension"
        ) else (
            set "folder=Unknown\Miscellaneous\!ext!"
        )

        rem Images
        if /I "!ext!"=="JPG"  set "folder=Images\JPG"
        if /I "!ext!"=="JPEG" set "folder=Images\JPEG"
        if /I "!ext!"=="PNG"  set "folder=Images\PNG"
        if /I "!ext!"=="GIF"  set "folder=Images\GIF"
        if /I "!ext!"=="WEBP" set "folder=Images\WEBP"
        if /I "!ext!"=="BMP"  set "folder=Images\BMP"
        if /I "!ext!"=="TIF"  set "folder=Images\TIF"
        if /I "!ext!"=="TIFF" set "folder=Images\TIFF"
        if /I "!ext!"=="SVG"  set "folder=Images\SVG"
        if /I "!ext!"=="ICO"  set "folder=Images\ICO"
        if /I "!ext!"=="PSD"  set "folder=Images\PSD"
        if /I "!ext!"=="KRA"  set "folder=Images\Krita"

        rem Videos
        if /I "!ext!"=="MP4"  set "folder=Videos\MP4"
        if /I "!ext!"=="MKV"  set "folder=Videos\MKV"
        if /I "!ext!"=="AVI"  set "folder=Videos\AVI"
        if /I "!ext!"=="MOV"  set "folder=Videos\MOV"
        if /I "!ext!"=="WMV"  set "folder=Videos\WMV"
        if /I "!ext!"=="WEBM" set "folder=Videos\WEBM"
        if /I "!ext!"=="M4V"  set "folder=Videos\M4V"

        rem Audio
        if /I "!ext!"=="MP3"  set "folder=Audio\MP3"
        if /I "!ext!"=="WAV"  set "folder=Audio\WAV"
        if /I "!ext!"=="FLAC" set "folder=Audio\FLAC"
        if /I "!ext!"=="OGG"  set "folder=Audio\OGG"
        if /I "!ext!"=="M4A"  set "folder=Audio\M4A"
        if /I "!ext!"=="AAC"  set "folder=Audio\AAC"
        if /I "!ext!"=="WMA"  set "folder=Audio\WMA"

        rem Documents
        if /I "!ext!"=="PDF"  set "folder=Documents\PDF"
        if /I "!ext!"=="DOC"  set "folder=Documents\DOC"
        if /I "!ext!"=="DOCX" set "folder=Documents\DOCX"
        if /I "!ext!"=="TXT"  set "folder=Documents\TXT"
        if /I "!ext!"=="RTF"  set "folder=Documents\RTF"
        if /I "!ext!"=="XLS"  set "folder=Documents\XLS"
        if /I "!ext!"=="XLSX" set "folder=Documents\XLSX"
        if /I "!ext!"=="PPT"  set "folder=Documents\PPT"
        if /I "!ext!"=="PPTX" set "folder=Documents\PPTX"
        if /I "!ext!"=="CSV"  set "folder=Documents\CSV"
        if /I "!ext!"=="MD"   set "folder=Documents\Markdown"

        rem Archives
        if /I "!ext!"=="ZIP" set "folder=Archives\ZIP"
        if /I "!ext!"=="RAR" set "folder=Archives\RAR"
        if /I "!ext!"=="7Z"  set "folder=Archives\7Z"
        if /I "!ext!"=="TAR" set "folder=Archives\TAR"
        if /I "!ext!"=="GZ"  set "folder=Archives\GZ"

        rem Programs
        if /I "!ext!"=="EXE" set "folder=Programs\EXE"
        if /I "!ext!"=="MSI" set "folder=Programs\MSI"
        if /I "!ext!"=="BAT" set "folder=Programs\BAT"
        if /I "!ext!"=="CMD" set "folder=Programs\CMD"

        rem 3D / Unity / VRChat / Modelling
        if /I "!ext!"=="UNITYPACKAGE" set "folder=3D_VRChat_Unity\UnityPackage"
        if /I "!ext!"=="UNITY"        set "folder=3D_VRChat_Unity\UnityScene"
        if /I "!ext!"=="PREFAB"       set "folder=3D_VRChat_Unity\Prefab"
        if /I "!ext!"=="ASSET"        set "folder=3D_VRChat_Unity\UnityAsset"
        if /I "!ext!"=="MAT"          set "folder=3D_VRChat_Unity\Materials"
        if /I "!ext!"=="ANIM"         set "folder=3D_VRChat_Unity\Animation"
        if /I "!ext!"=="CONTROLLER"   set "folder=3D_VRChat_Unity\AnimatorController"
        if /I "!ext!"=="OVERRIDE"     set "folder=3D_VRChat_Unity\AnimatorOverride"

        if /I "!ext!"=="FBX"  set "folder=3D_VRChat_Unity\Models_FBX"
        if /I "!ext!"=="OBJ"  set "folder=3D_VRChat_Unity\Models_OBJ"
        if /I "!ext!"=="DAE"  set "folder=3D_VRChat_Unity\Models_DAE"
        if /I "!ext!"=="GLB"  set "folder=3D_VRChat_Unity\Models_GLB"
        if /I "!ext!"=="GLTF" set "folder=3D_VRChat_Unity\Models_GLTF"
        if /I "!ext!"=="STL"  set "folder=3D_VRChat_Unity\Models_STL"

        if /I "!ext!"=="BLEND" set "folder=3D_VRChat_Unity\Blender"
        if /I "!ext!"=="SPP"   set "folder=3D_VRChat_Unity\SubstancePainter"
        if /I "!ext!"=="SBS"   set "folder=3D_VRChat_Unity\SubstanceDesigner"
        if /I "!ext!"=="SBSAR" set "folder=3D_VRChat_Unity\SubstanceArchive"

        if /I "!ext!"=="SHADER"  set "folder=3D_VRChat_Unity\Shaders"
        if /I "!ext!"=="CGINC"   set "folder=3D_VRChat_Unity\Shaders"
        if /I "!ext!"=="HLSL"    set "folder=3D_VRChat_Unity\Shaders"
        if /I "!ext!"=="COMPUTE" set "folder=3D_VRChat_Unity\Shaders"

        if not exist "!folder!" mkdir "!folder!"

        echo Moving "%%F" to "!folder!\"
        move "%%F" "!folder!\" >nul
    )
)

echo.
echo Finished sorting files.
pause