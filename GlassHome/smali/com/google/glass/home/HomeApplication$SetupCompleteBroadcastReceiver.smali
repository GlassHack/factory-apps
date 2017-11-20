.class Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCompleteBroadcastReceiver"
.end annotation


# instance fields
.field private final setupCompleteReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 3

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 588
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 585
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->setupCompleteReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 589
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/HomeApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "x1"    # Lcom/google/glass/home/HomeApplication$1;

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->setupCompleteReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Received intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    const-string v1, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 597
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 598
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v1, v0}, Lcom/google/glass/home/HomeApplication;->access$1400(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    .line 603
    :goto_0
    new-instance v1, Lcom/google/glass/util/TimeZoneUtil;

    invoke-direct {v1, p1}, Lcom/google/glass/util/TimeZoneUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZone()V

    .line 605
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void

    .line 600
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$SetupCompleteBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Received signal that setup was complete, but have no account."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
