.class final Lcom/google/android/youtube/core/async/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/p;

.field private final b:Lcom/google/android/youtube/core/async/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/p;Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/youtube/core/async/u;->a:Lcom/google/android/youtube/core/async/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "targetCallback can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/h;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/u;->b:Lcom/google/android/youtube/core/async/h;

    .line 63
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/async/u;->b:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 74
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/async/u;->a:Lcom/google/android/youtube/core/async/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/p;->a(Lcom/google/android/youtube/core/async/p;)Lcom/google/android/youtube/core/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/u;->a:Lcom/google/android/youtube/core/async/p;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/cache/a;->a(Lcom/google/android/youtube/core/utils/g;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/async/u;->b:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
