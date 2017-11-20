.class public Lcom/google/glass/logging/WatchdogService;
.super Landroid/app/IntentService;
.source "WatchdogService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private watchdog:Lcom/google/glass/logging/Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/logging/WatchdogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/WatchdogService;->TAG:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/WatchdogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/logging/WatchdogService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 30
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    move-object v0, p0

    .line 35
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-static {}, Lcom/google/glass/logging/WatchdogProvider;->getInstance()Lcom/google/glass/logging/WatchdogProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/logging/WatchdogProvider;->get(Landroid/content/Context;)Lcom/google/glass/logging/Watchdog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/logging/WatchdogService;->watchdog:Lcom/google/glass/logging/Watchdog;

    .line 36
    return-void

    .line 33
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/logging/WatchdogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/logging/WatchdogService;->watchdog:Lcom/google/glass/logging/Watchdog;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/glass/logging/WatchdogService;->watchdog:Lcom/google/glass/logging/Watchdog;

    invoke-virtual {v0}, Lcom/google/glass/logging/Watchdog;->watch()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/google/glass/logging/WatchdogService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No watchdog created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
