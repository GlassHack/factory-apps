.class public final Lcom/google/android/youtube/core/async/w;
.super Lcom/google/android/youtube/core/async/aj;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/async/aj;-><init>(Lcom/google/android/youtube/core/async/h;)V

    .line 24
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/w;->a:Landroid/os/Handler;

    .line 25
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/w;->b:Ljava/lang/Thread;

    .line 26
    return-void
.end method

.method public static a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/w;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/youtube/core/async/w;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/w;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/h;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/w;->b:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/w;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
