.class final Lcom/google/android/youtube/core/async/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/al;

.field private final b:Lcom/google/android/youtube/core/async/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/al;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/async/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/google/android/youtube/core/async/am;->b:Lcom/google/android/youtube/core/async/h;

    .line 117
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->b:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 129
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/async/al;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/al;->a(Lcom/google/android/youtube/core/async/al;)Lcom/google/android/youtube/core/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/async/al;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/async/al;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/am;->a:Lcom/google/android/youtube/core/async/al;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/al;->b(Lcom/google/android/youtube/core/async/al;)Lcom/google/android/youtube/core/utils/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/async/am;->b:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
