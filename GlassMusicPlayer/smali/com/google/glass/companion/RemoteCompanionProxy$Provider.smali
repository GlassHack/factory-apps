.class public Lcom/google/glass/companion/RemoteCompanionProxy$Provider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


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

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker$Provider;->getInstance()Lcom/google/glass/companion/ConnectionChecker$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/ConnectionChecker$Provider;->get(Landroid/content/Context;)Lcom/google/glass/companion/ConnectionChecker;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v1, p1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/content/Context;Lcom/google/glass/companion/ConnectionChecker;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->init(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
