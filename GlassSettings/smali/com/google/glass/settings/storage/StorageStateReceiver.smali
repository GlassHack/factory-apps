.class public Lcom/google/glass/settings/storage/StorageStateReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "StorageStateReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/storage/StorageStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method private logUserEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private showDialog(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # I

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;->getInstance()Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    move-result-object v0

    .line 40
    .local v0, "helper":Lcom/google/glass/util/FullScreenMessagingDialogHelper;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$string;->storage_dialog_sub_message:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "subMessage":Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 44
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/settings/storage/StorageStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Broadcast received: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    sget v1, Lcom/google/glass/settings/ui/R$string;->low_storage_dialog_message:I

    invoke-direct {p0, p1, v1}, Lcom/google/glass/settings/storage/StorageStateReceiver;->showDialog(Landroid/content/Context;I)V

    .line 28
    const-string v1, "2"

    invoke-direct {p0, p1, v1}, Lcom/google/glass/settings/storage/StorageStateReceiver;->logUserEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    sget v1, Lcom/google/glass/settings/ui/R$string;->full_storage_dialog_message:I

    invoke-direct {p0, p1, v1}, Lcom/google/glass/settings/storage/StorageStateReceiver;->showDialog(Landroid/content/Context;I)V

    .line 31
    const-string v1, "3"

    invoke-direct {p0, p1, v1}, Lcom/google/glass/settings/storage/StorageStateReceiver;->logUserEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "1"

    invoke-direct {p0, p1, v1}, Lcom/google/glass/settings/storage/StorageStateReceiver;->logUserEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
