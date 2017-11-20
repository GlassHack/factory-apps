.class final Lcom/google/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/j/h;


# direct methods
.method constructor <init>(Lcom/google/j/h;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    iget-object v1, v0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    iget-wide v4, v0, Lcom/google/j/h;->k:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    iget-object v0, v0, Lcom/google/j/h;->l:Lcom/google/g/a/d/d;

    iget-object v2, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    iget-wide v2, v2, Lcom/google/j/h;->k:J

    invoke-virtual {v0, v2, v3}, Lcom/google/g/a/d/d;->b(J)V

    .line 262
    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    iget-object v0, v0, Lcom/google/j/h;->l:Lcom/google/g/a/d/d;

    invoke-virtual {v0}, Lcom/google/g/a/d/d;->d()V

    .line 263
    monitor-exit v1

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/j/h;->k:J

    .line 267
    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/j/h;->j:J

    .line 268
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/google/j/i;->a:Lcom/google/j/h;

    invoke-virtual {v0}, Lcom/google/j/h;->c()V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
