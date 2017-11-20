.class public final Lcom/google/android/youtube/core/async/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/youtube/core/async/ae;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ae;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/c;->a:Ljava/util/concurrent/Executor;

    .line 29
    iput-object p2, p0, Lcom/google/android/youtube/core/async/c;->b:Lcom/google/android/youtube/core/async/ae;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/c;)Lcom/google/android/youtube/core/async/ae;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/youtube/core/async/c;->b:Lcom/google/android/youtube/core/async/ae;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ae;)Lcom/google/android/youtube/core/async/c;
    .locals 1

    .prologue
    .line 22
    const-string v0, "executor may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/async/c;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/c;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ae;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "request may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "callback may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/c;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/async/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/core/async/d;-><init>(Lcom/google/android/youtube/core/async/c;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
