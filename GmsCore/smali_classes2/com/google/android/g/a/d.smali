.class final Lcom/google/android/g/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# instance fields
.field final synthetic a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic b:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic c:Lcom/google/android/g/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/g/a/c;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/g/a/d;->c:Lcom/google/android/g/a/c;

    iput-object p2, p0, Lcom/google/android/g/a/d;->a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lcom/google/android/g/a/d;->b:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortRequest()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/g/a/d;->a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    .line 54
    return-void
.end method

.method public final getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/g/a/d;->b:Lorg/apache/http/conn/routing/HttpRoute;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/g/a/d;->a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/google/android/g/a/e;

    iget-object v2, p0, Lcom/google/android/g/a/d;->c:Lcom/google/android/g/a/c;

    invoke-direct {v1, v2, v0}, Lcom/google/android/g/a/e;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    return-object v1
.end method
