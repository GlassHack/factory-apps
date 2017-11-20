.class Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerConnectedBroadcastReceiver"
.end annotation


# instance fields
.field private final account:Landroid/accounts/Account;

.field private final powerConnectedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 3
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 695
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->this$0:Lcom/google/glass/home/HomeApplication;

    .line 690
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->powerConnectedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 696
    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->account:Landroid/accounts/Account;

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;Lcom/google/glass/home/HomeApplication$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "x1"    # Landroid/accounts/Account;
    .param p3, "x2"    # Lcom/google/glass/home/HomeApplication$1;

    .prologue
    .line 688
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;-><init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->powerConnectedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Power connected. Requesting sync."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->account:Landroid/accounts/Account;

    const-string v1, "com.google.glass.sync.timeline"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 704
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->account:Landroid/accounts/Account;

    const-string v1, "com.google.glass.entity"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 706
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$PowerConnectedBroadcastReceiver;->account:Landroid/accounts/Account;

    const-string v1, "com.google.glass.settings.syncable"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 708
    return-void
.end method
