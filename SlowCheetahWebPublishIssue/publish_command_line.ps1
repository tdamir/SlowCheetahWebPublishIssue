$msBuild = 'c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\msbuild.exe';

# -- solution rebuild --
& "$msBuild" ..\SlowCheetahWebPublishIssue.sln /p:Configuration=FolderProfile /p:Platform='Any CPU' /t:Clean

& "$msBuild" ..\SlowCheetahWebPublishIssue.sln /p:Configuration=FolderProfile /p:Platform='Any CPU' /t:Build

& "$msBuild" /v:diag SlowCheetahWebPublishIssue.csproj /p:Configuration=FolderProfile /p:PublishProfile=FolderProfile /p:DeployOnBuild=true /t:WebPublish
