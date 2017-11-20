.class public abstract Lcom/google/glass/bluetooth/companion/CompanionServerThread;
.super Ljava/lang/Thread;
.source "CompanionServerThread.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final companionSocketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

.field private final finishLatch:Ljava/util/concurrent/CountDownLatch;

.field private final oldThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 5
    .param p1, "companionSocketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "oldThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->finishLatch:Ljava/util/concurrent/CountDownLatch;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->setName(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->companionSocketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 45
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->oldThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .line 46
    return-void
.end method

.method public static startSocketThread(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    .locals 5
    .param p0, "companionSocketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p1, "connectionType"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    .param p2, "oldNetworkSocketThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne p1, v1, :cond_1

    .line 59
    new-instance v0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;

    .end local v0    # "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    invoke-direct {v0, p0, p2}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 67
    .restart local v0    # "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    :goto_0
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->start()V

    .line 70
    :cond_0
    return-object v0

    .line 60
    :cond_1
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne p1, v1, :cond_2

    .line 61
    new-instance v0, Lcom/google/glass/bluetooth/companion/TetheringNetworkSocketThread;

    .end local v0    # "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    invoke-direct {v0, p0, p2}, Lcom/google/glass/bluetooth/companion/TetheringNetworkSocketThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .restart local v0    # "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne p1, v1, :cond_3

    .line 63
    new-instance v0, Lcom/google/glass/bluetooth/companion/WifiNetworkSocketThread;

    .end local v0    # "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    invoke-direct {v0, p0, p2}, Lcom/google/glass/bluetooth/companion/WifiNetworkSocketThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .restart local v0    # "result":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown connectionType = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized blockOnConnection()V
    .locals 6

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->companionSocketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s is blocked on companion connection"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while waiting (for unblock)."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract close()V
.end method

.method public getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->companionSocketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    return-object v0
.end method

.method public abstract getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
.end method

.method public abstract isClosed()Z
.end method

.method public notifySetupStatusChange()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->oldThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->oldThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->oldThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    iget-object v1, v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->runInternally()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 91
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "[%s]: server socket thread ends."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while waiting for the old network socket thread to quit"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exception in CompanionServerThread [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 91
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "[%s]: server socket thread ends."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 91
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->finishLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "[%s]: server socket thread ends."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected abstract runInternally()V
.end method

.method public setKey(Lcom/google/glass/bluetooth/companion/PresharedKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/glass/bluetooth/companion/PresharedKey;

    .prologue
    .line 123
    return-void
.end method

.method public declared-synchronized unblock()V
    .locals 5

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unblock %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
