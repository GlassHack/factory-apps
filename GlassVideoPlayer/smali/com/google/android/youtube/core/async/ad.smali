.class final Lcom/google/android/youtube/core/async/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/ac;

.field private final b:Lcom/google/android/youtube/core/async/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ac;Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ad;->a:Lcom/google/android/youtube/core/async/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "targetCallback can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/h;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ad;->b:Lcom/google/android/youtube/core/async/h;

    .line 41
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ad;->b:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 52
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ad;->a:Lcom/google/android/youtube/core/async/ac;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/ac;->a(Lcom/google/android/youtube/core/async/ac;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ad;->a:Lcom/google/android/youtube/core/async/ac;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/ac;->b(Lcom/google/android/youtube/core/async/ac;)Lcom/google/android/youtube/core/utils/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ad;->b:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method
