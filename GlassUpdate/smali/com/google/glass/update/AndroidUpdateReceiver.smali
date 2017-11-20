.class public final Lcom/google/glass/update/AndroidUpdateReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "AndroidUpdateReceiver.java"


# static fields
.field private static final UPDATE_ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/update/AndroidUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.update.UPDATE_AVAILABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.glass.update.INSTALL_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.glass.update.CANCEL_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.glass.update.UPDATE_COMPLETED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/update/AndroidUpdateReceiver;->UPDATE_ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/update/AndroidUpdateReceiver;->UPDATE_ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    const-class v0, Lcom/google/glass/update/AndroidUpdateService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    return-void
.end method

.method private stopService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/update/AndroidUpdateService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 96
    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/glass/update/AndroidUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received %s action."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string v2, "com.google.glass.update.UPDATE_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string v2, "update_dialog_message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Update %s is available."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/glass/update/AndroidUpdateReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v2, "com.google.glass.update.INSTALL_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Update was accepted, install should be starting."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/update/AndroidUpdateReceiver;->stopService(Landroid/content/Context;)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v2, "com.google.glass.update.CANCEL_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Update was cancelled by Android OS."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/google/glass/update/AndroidUpdateReceiver;->stopService(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v2, "com.google.glass.update.UPDATE_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Update was completed, showing completed dialog."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/update/AndroidUpdateReceiver;->startCompletedActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/google/glass/update/AndroidUpdateReceiver;->stopService(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/update/AndroidUpdateReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received unknown action: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method startCompletedActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incoming"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    sget-object v4, Lcom/google/glass/update/AndroidUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Starting Full Screen Message Dialog with notification of update completed."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v4, "is_success"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    .local v3, "success":Z
    sget-object v4, Lcom/google/glass/update/AndroidUpdateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Update was successful? %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    if-eqz v3, :cond_0

    .line 75
    sget v4, Lcom/google/glass/update/R$string;->android_update_success:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x1

    .line 77
    .local v0, "icon":I
    const-string v1, "1"

    .line 83
    .local v1, "logData":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v4, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->OTA_SUCCESS_STATE:Lcom/google/glass/userevent/UserEventAction;

    const-string v6, "s"

    new-array v7, v8, [Ljava/lang/Object;

    .line 84
    invoke-static {v6, v1, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 85
    new-instance v4, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-direct {v4, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v0, v9}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;IZ)V

    .line 86
    return-void

    .line 79
    .end local v0    # "icon":I
    .end local v1    # "logData":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    sget v4, Lcom/google/glass/update/R$string;->android_update_fail:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2    # "message":Ljava/lang/String;
    const/4 v0, 0x2

    .line 81
    .restart local v0    # "icon":I
    const-string v1, "0"

    .restart local v1    # "logData":Ljava/lang/String;
    goto :goto_0
.end method
