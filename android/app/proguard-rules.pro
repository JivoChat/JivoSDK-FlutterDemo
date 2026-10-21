# Jivo SDK — https://github.com/JivoChat/JivoSDK-Android/blob/develop/README_en/recommendations.md
-keep class com.jivosite.sdk.** { *; }
-keep class androidx.lifecycle.LiveData { *; }

-keep,allowobfuscation,allowshrinking interface retrofit2.Call
-keep,allowobfuscation,allowshrinking class retrofit2.Response

-keep,allowobfuscation,allowshrinking class com.jivosite.sdk.model.** { *; }
-keep,allowobfuscation,allowshrinking class com.jivosite.sdk.network.** { *; }

-keepattributes Signature, InnerClasses, EnclosingMethod
-keepattributes RuntimeVisibleAnnotations, RuntimeVisibleParameterAnnotations
