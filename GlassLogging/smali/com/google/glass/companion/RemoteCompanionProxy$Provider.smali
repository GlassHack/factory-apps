.class public Lcom/google/glass/companion/RemoteCompanionProxy$Provider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "RemoteCompanionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/companion/RemoteCompanionProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/companion/RemoteCompanionProxy$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    invoke-direct {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->instance:Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->instance:Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized initIfNeeded(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker$Provider;->getInstance()Lcom/google/glass/companion/ConnectionChecker$Provider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/companion/ConnectionChecker$Provider;->get(Landroid/content/Context;)Lcom/google/glass/companion/ConnectionChecker;

    move-result-object v0

    .line 409
    .local v0, "connectionChecker":Lcom/google/glass/companion/ConnectionChecker;
    new-instance v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v1, p1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/content/Context;Lcom/google/glass/companion/ConnectionChecker;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->init(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v0    # "connectionChecker":Lcom/google/glass/companion/ConnectionChecker;
    :cond_0
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
