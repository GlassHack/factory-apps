.class Lcom/squareup/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ConnectionPool;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionPool$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v2, "expiredConnections":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Connection;>;"
    const/4 v5, 0x0

    .line 90
    .local v5, "idleConnectionCount":I
    iget-object v7, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v7

    .line 91
    :try_start_0
    iget-object v6, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v6}, Lcom/squareup/okhttp/ConnectionPool;->access$000(Lcom/squareup/okhttp/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v6

    iget-object v8, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v8}, Lcom/squareup/okhttp/ConnectionPool;->access$000(Lcom/squareup/okhttp/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 92
    .local v3, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Connection;

    .line 94
    .local v0, "connection":Lcom/squareup/okhttp/Connection;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v6}, Lcom/squareup/okhttp/ConnectionPool;->access$100(Lcom/squareup/okhttp/ConnectionPool;)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/squareup/okhttp/Connection;->isExpired(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 95
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 103
    .end local v0    # "connection":Lcom/squareup/okhttp/Connection;
    :cond_2
    iget-object v6, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v6}, Lcom/squareup/okhttp/ConnectionPool;->access$000(Lcom/squareup/okhttp/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v6

    iget-object v8, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v8}, Lcom/squareup/okhttp/ConnectionPool;->access$000(Lcom/squareup/okhttp/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 104
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {v6}, Lcom/squareup/okhttp/ConnectionPool;->access$200(Lcom/squareup/okhttp/ConnectionPool;)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 105
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Connection;

    .line 106
    .restart local v0    # "connection":Lcom/squareup/okhttp/Connection;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 109
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "connection":Lcom/squareup/okhttp/Connection;
    :cond_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/Connection;

    .line 114
    .local v1, "expiredConnection":Lcom/squareup/okhttp/Connection;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 112
    .end local v1    # "expiredConnection":Lcom/squareup/okhttp/Connection;
    .end local v3    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 116
    .restart local v3    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/squareup/okhttp/Connection;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v6, 0x0

    return-object v6
.end method
