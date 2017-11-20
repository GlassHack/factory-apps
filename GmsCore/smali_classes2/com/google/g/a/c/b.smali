.class public final Lcom/google/g/a/c/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/g/a/c/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/g/a/c/a;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/g/a/c/b;->a:Lcom/google/g/a/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/google/g/a/c/a;->a()V

    .line 88
    iput-object p2, p0, Lcom/google/g/a/c/b;->b:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/google/g/a/c/b;->c:Ljava/lang/Runnable;

    .line 90
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/c/b;->a:Lcom/google/g/a/c/a;

    invoke-virtual {v0}, Lcom/google/g/a/c/a;->b()V

    .line 96
    iget-object v0, p0, Lcom/google/g/a/c/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/google/g/a/c/b;->a:Lcom/google/g/a/c/a;

    invoke-virtual {v0}, Lcom/google/g/a/c/a;->c()V

    .line 103
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/google/g/a/c/b;->a:Lcom/google/g/a/c/a;

    invoke-virtual {v0}, Lcom/google/g/a/c/a;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/g/a/c/b;->a:Lcom/google/g/a/c/a;

    invoke-virtual {v1}, Lcom/google/g/a/c/a;->c()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/g/a/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/g/a/c/b;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
