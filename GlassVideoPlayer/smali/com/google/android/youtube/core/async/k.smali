.class final Lcom/google/android/youtube/core/async/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/j;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/youtube/core/async/h;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/j;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/google/android/youtube/core/async/k;->b:Ljava/lang/Object;

    .line 123
    iput-object p3, p0, Lcom/google/android/youtube/core/async/k;->c:Ljava/lang/Object;

    .line 124
    iput-object p4, p0, Lcom/google/android/youtube/core/async/k;->d:Lcom/google/android/youtube/core/async/h;

    .line 125
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/async/k;->d:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 147
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 129
    iput-object p2, p0, Lcom/google/android/youtube/core/async/k;->e:Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/j;->a(Lcom/google/android/youtube/core/async/j;)Lcom/google/android/youtube/core/converter/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/j;->b(Lcom/google/android/youtube/core/async/j;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/j;->b(Lcom/google/android/youtube/core/async/j;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/k;->run()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/k;->d:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/j;->a(Lcom/google/android/youtube/core/async/j;)Lcom/google/android/youtube/core/converter/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/k;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/converter/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/google/android/youtube/core/async/k;->d:Lcom/google/android/youtube/core/async/h;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/k;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    iget-object v1, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/k;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/k;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/k;->d:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/core/async/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/google/android/youtube/core/async/k;->a:Lcom/google/android/youtube/core/async/j;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/k;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/k;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/k;->d:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/core/async/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V

    goto :goto_0
.end method
