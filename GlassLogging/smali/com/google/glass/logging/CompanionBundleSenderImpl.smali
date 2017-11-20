.class final Lcom/google/glass/logging/CompanionBundleSenderImpl;
.super Ljava/lang/Object;
.source "CompanionBundleSenderImpl.java"

# interfaces
.implements Lcom/google/glass/logging/CompanionBundleSender;


# instance fields
.field final companionStateChangeListener:Lcom/google/glass/companion/CompanionStateChangeListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private pendingBundle:Landroid/os/Bundle;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 2
    .param p1, "remoteCompanionProxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/CompanionBundleSenderImpl$1;-><init>(Lcom/google/glass/logging/CompanionBundleSenderImpl;)V

    iput-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->companionStateChangeListener:Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 35
    const-string v0, "null remoteCompanionProxy"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 36
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    iget-object v1, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->companionStateChangeListener:Lcom/google/glass/companion/CompanionStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/CompanionBundleSenderImpl;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/CompanionBundleSenderImpl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->pendingBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/logging/CompanionBundleSenderImpl;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/CompanionBundleSenderImpl;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->pendingBundle:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public sendBundleToCompanion(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->companionStateChangeListener:Lcom/google/glass/companion/CompanionStateChangeListener;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iput-object p1, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->pendingBundle:Landroid/os/Bundle;

    .line 48
    monitor-exit v1

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/logging/CompanionBundleSenderImpl;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    goto :goto_0
.end method
