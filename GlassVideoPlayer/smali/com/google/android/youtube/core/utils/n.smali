.class public final Lcom/google/android/youtube/core/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/o;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/n;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 79
    return-void
.end method
