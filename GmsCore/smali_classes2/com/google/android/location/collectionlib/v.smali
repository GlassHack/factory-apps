.class final Lcom/google/android/location/collectionlib/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/x;

.field final synthetic b:Lcom/google/android/location/collectionlib/u;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/u;Lcom/google/android/location/collectionlib/x;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/location/collectionlib/v;->b:Lcom/google/android/location/collectionlib/u;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/v;->a:Lcom/google/android/location/collectionlib/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/location/collectionlib/v;->b:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/v;->b:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/v;->a:Lcom/google/android/location/collectionlib/x;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/v;->b:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataReader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/collectionlib/v;->a:Lcom/google/android/location/collectionlib/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " started by postDelayedIfNotQuitted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/v;->b:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/v;->a:Lcom/google/android/location/collectionlib/x;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/google/android/location/collectionlib/v;->a:Lcom/google/android/location/collectionlib/x;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/x;->run()V

    .line 323
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 321
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/v;->b:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "DataReader already started by onFlushCompleted."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
