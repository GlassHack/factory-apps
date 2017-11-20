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
    .line 457
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    invoke-direct {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->instance:Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->instance:Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized initIfNeeded(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-static {p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->createInstance(Landroid/content/Context;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->init(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
