.class final Lcom/google/android/youtube/core/async/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/c;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Lcom/google/android/youtube/core/async/h;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/c;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/async/d;->a:Lcom/google/android/youtube/core/async/c;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/d;->c:Lcom/google/android/youtube/core/async/h;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/d;->a:Lcom/google/android/youtube/core/async/c;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/c;->a(Lcom/google/android/youtube/core/async/c;)Lcom/google/android/youtube/core/async/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/d;->c:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "target requester should catch exception and pass to callback.onError"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/google/android/youtube/core/async/d;->c:Lcom/google/android/youtube/core/async/h;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/d;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
