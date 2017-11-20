.class final Lcom/google/android/youtube/core/async/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/e;

.field private b:Z

.field private final synthetic c:Lcom/google/android/youtube/core/async/h;

.field private final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/e;Lcom/google/android/youtube/core/async/h;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/f;->c:Lcom/google/android/youtube/core/async/h;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/f;->d:Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/f;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/e;->a(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/f;->b:Z

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/e;->a(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 90
    const-class v1, Lcom/google/android/youtube/core/async/e;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/e;->b(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/async/a;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/e;->b(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v6

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v6, :cond_0

    .line 97
    iget-object v0, v2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v6, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 99
    iget-object v4, v6, Lcom/google/android/youtube/core/model/UserAuth;->d:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v5, v6, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/e;->a(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/g;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/youtube/core/async/f;->a:Lcom/google/android/youtube/core/async/e;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/e;->c(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/ae;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 110
    :goto_1
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->c:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/f;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/async/f;->c:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/f;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method
