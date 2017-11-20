.class public Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "RecoveryCodeReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field lockRecoveryResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver$1;-><init>(Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;)V

    iput-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->lockRecoveryResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    return-object v0
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->getInstance()Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    .line 48
    sget-object v4, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Broadcast intent received: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const-string v4, "com.google.glass.action.STORE_RECOVERY_CODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    const-string v4, "RECOVERY_CODE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    sget-object v4, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "STORE_RECOVERY_CODE intent received, but no code was provided! BUG!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v4, "RECOVERY_CODE"

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 57
    .local v1, "recoveryCode":J
    sget-object v4, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Storing recovery code."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v4, p0, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    invoke-virtual {v4, v1, v2}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->store(J)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_SUCCEEDED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0

    .line 61
    .end local v1    # "recoveryCode":J
    :cond_1
    const-string v4, "com.google.android.glass.action.EMERGENCY_UNLOCK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    sget-object v4, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "ACTION_EMERGENCY_UNLOCK fired -- starting scanner activity."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v3, "scanIntent":Landroid/content/Intent;
    const-class v4, Lcom/google/glass/lockrecovery/RecoveryScanActivity;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    .end local v3    # "scanIntent":Landroid/content/Intent;
    :cond_2
    sget-object v4, Lcom/google/glass/lockrecovery/RecoveryCodeReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown action %s received! BUG!"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
