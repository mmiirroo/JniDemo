#include "com_whole_jnidemo_MyActivity.h"

JNIEXPORT jstring JNICALL Java_com_whole_jnidemo_MyActivity_hellojni
  (JNIEnv* env, jobject obj)
{
    return env->NewStringUTF( "Hello from JNI !  Compiled with ABI .");
}