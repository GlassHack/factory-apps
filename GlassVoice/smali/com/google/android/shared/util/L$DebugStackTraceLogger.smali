.class public final Lcom/google/android/shared/util/L$DebugStackTraceLogger;
.super Ljava/lang/Exception;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugStackTraceLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 384
    const-string v0, "DEBUG: NOT a real Exception"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 385
    return-void
.end method
