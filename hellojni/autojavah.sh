#!/bin/bash
export ProjectPath=$(cd "../$(dirname "$1")"; pwd)
export TargetClassName="com.whole.jnidemo.MyActivity"

export SourceFile="${ProjectPath}/app/build/intermediates/classes/debug"
export TargetPath="${ProjectPath}/hellojni/src/main/jni"

echo ProjectPath:${ProjectPath}
echo TargetClassName:${TargetClassName}
echo SourceFile:${SourceFile}
echo TargetPath:${TargetPath}

cd "${SourceFile}"
javah -d ${TargetPath} -classpath "${SourceFile}" "${TargetClassName}"
echo -d ${TargetPath} -classpath "${SourceFile}" "${TargetClassName}"
