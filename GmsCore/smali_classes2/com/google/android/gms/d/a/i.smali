.class final Lcom/google/android/gms/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic c:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/b;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/gms/d/a/i;->c:Lcom/google/android/gms/d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/d/a/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/d/a/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/i;->c:Lcom/google/android/gms/d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a/b;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/a/s;

    invoke-interface {v0}, Lcom/google/android/gms/d/a/s;->a()Lcom/google/android/gms/d/a/p;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/google/android/gms/d/a/l;

    iget-object v2, p0, Lcom/google/android/gms/d/a/i;->c:Lcom/google/android/gms/d/a/b;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/d/a/l;-><init>(Lcom/google/android/gms/d/a/p;Lcom/google/android/gms/d/a/b;)V

    .line 209
    iget-object v2, p0, Lcom/google/android/gms/d/a/i;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/d/a/p;->a(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/d/a/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "DGClientImpl"

    const-string v2, "Unexpected exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/d/a/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/google/android/gms/d/a/k;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/d/a/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/android/gms/d/a/k;

    const-string v2, "Disconnected."

    invoke-direct {v1, v2}, Lcom/google/android/gms/d/a/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
