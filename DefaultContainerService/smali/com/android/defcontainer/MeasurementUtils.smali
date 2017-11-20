.class public Lcom/android/defcontainer/MeasurementUtils;
.super Ljava/lang/Object;
.source "MeasurementUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "defcontainer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static measureDirectory(Ljava/lang/String;)J
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/android/defcontainer/MeasurementUtils;->native_measureDirectory(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native native_measureDirectory(Ljava/lang/String;)J
.end method
