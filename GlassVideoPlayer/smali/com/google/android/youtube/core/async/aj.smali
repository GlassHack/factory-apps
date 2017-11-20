.class public abstract Lcom/google/android/youtube/core/async/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# static fields
.field private static final a:Ljava/util/concurrent/LinkedBlockingQueue;


# instance fields
.field private final b:Lcom/google/android/youtube/core/async/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/youtube/core/async/aj;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/h;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/aj;->b:Lcom/google/android/youtube/core/async/h;

    .line 33
    return-void
.end method

.method private static a()Lcom/google/android/youtube/core/async/ak;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/youtube/core/async/aj;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ak;

    .line 58
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/async/ak;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/async/ak;-><init>(Lcom/google/android/youtube/core/async/ak;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ak;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/android/youtube/core/async/aj;->b(Lcom/google/android/youtube/core/async/ak;)V

    return-void
.end method

.method private static b(Lcom/google/android/youtube/core/async/ak;)V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    sget-object v0, Lcom/google/android/youtube/core/async/aj;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "Interrupted when releasing runnable to the queue"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Runnable;)V
.end method

.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/youtube/core/async/aj;->a()Lcom/google/android/youtube/core/async/ak;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->b:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ak;->a(Lcom/google/android/youtube/core/async/h;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/aj;->a(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/youtube/core/async/aj;->a()Lcom/google/android/youtube/core/async/ak;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aj;->b:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ak;->a(Lcom/google/android/youtube/core/async/h;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/aj;->a(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
