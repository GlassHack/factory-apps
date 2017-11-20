.class public Lcom/google/android/shared/util/ExtraPreconditions;
.super Ljava/lang/Object;
.source "ExtraPreconditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/ExtraPreconditions$DebugThreadsSet;,
        Lcom/google/android/shared/util/ExtraPreconditions$DebugSameThread;,
        Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sThreadChecksDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static checkBcp47Locale(Ljava/lang/String;)V
    .locals 4
    .param p0, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 139
    return-void

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v1, v2

    .line 138
    goto :goto_1
.end method

.method public static checkHoldsLock(Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 134
    return-void
.end method

.method public static checkMainThread()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/google/android/shared/util/ExtraPreconditions;->sThreadChecksDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 39
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNotMainThread()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/google/android/shared/util/ExtraPreconditions;->sThreadChecksDisabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 34
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createAnyThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static varargs createNotSetThreadsCheck([Ljava/lang/String;)Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .locals 1
    .param p0, "threadNames"    # [Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static varargs createSetThreadsCheck([Ljava/lang/String;)Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .locals 1
    .param p0, "threadNames"    # [Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-direct {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;-><init>()V

    return-object v0
.end method

.method public static setThreadChecksEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 28
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/shared/util/ExtraPreconditions;->sThreadChecksDisabled:Z

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
