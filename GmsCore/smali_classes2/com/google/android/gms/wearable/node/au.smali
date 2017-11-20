.class public final Lcom/google/android/gms/wearable/node/au;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/au;->a:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/au;->a:Z

    .line 37
    return-void
.end method

.method public final interrupt()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/au;->a:Z

    .line 32
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    return-void
.end method
