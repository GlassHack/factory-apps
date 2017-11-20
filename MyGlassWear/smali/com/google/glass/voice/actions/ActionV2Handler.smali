.class Lcom/google/glass/voice/actions/ActionV2Handler;
.super Ljava/lang/Object;
.source "ActionV2Handler.java"

# interfaces
.implements Lcom/google/glass/voice/actions/ActionHandler;


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/actions/ActionV2Handler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private static getCameraActionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    const/16 v2, 0x3d

    invoke-static {p0, v2}, Lcom/google/glass/voice/actions/ActionV2Handler;->logActionResponseReceived(Landroid/content/Context;I)V

    .line 69
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "cameraHelper":Lcom/google/glass/camera/CameraHelper;
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sound/SoundManager;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move v6, v1

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/camera/CameraHelper;->getTakePictureIntent(ZZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private getSearchActionIntentFromPeanut(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 38
    iget-object v4, p2, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 61
    :cond_0
    :goto_0
    return-object v2

    .line 41
    :cond_1
    iget-object v4, p0, Lcom/google/glass/voice/actions/ActionV2Handler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "actionV2 found."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {p2}, Lcom/google/glass/voice/actions/NavigationActionsUtils;->getNavigationIntentFromPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;)Landroid/content/Intent;

    move-result-object v2

    .line 43
    .local v2, "navigationIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p2, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 47
    iget-object v4, p2, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v0, v4, v1

    .line 48
    .local v0, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    iget-object v4, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-virtual {v4}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasActionType()Z

    move-result v4

    if-nez v4, :cond_2

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_2
    iget-object v4, v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->metadata:Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-virtual {v4}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->getActionType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 57
    iget-object v4, p0, Lcom/google/glass/voice/actions/ActionV2Handler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Search action not recognized"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 58
    goto :goto_0

    .line 53
    :pswitch_0
    invoke-static {p1}, Lcom/google/glass/voice/actions/ActionV2Handler;->getCameraActionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {p1}, Lcom/google/glass/voice/actions/ActionV2Handler;->getVideoActionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .end local v0    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_3
    move-object v2, v3

    .line 61
    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getVideoActionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/16 v1, 0x3e

    invoke-static {p0, v1}, Lcom/google/glass/voice/actions/ActionV2Handler;->logActionResponseReceived(Landroid/content/Context;I)V

    .line 81
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "videoCameraHelper":Lcom/google/glass/camera/CameraHelper;
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    const/4 v3, 0x1

    .line 82
    invoke-virtual {v0, v2, v1, v3}, Lcom/google/glass/camera/CameraHelper;->getRecordVideoIntent(ZLcom/google/glass/sound/SoundManager;Z)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static logActionResponseReceived(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->ACTION_RESPONSE_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public handleAction(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/actions/ActionV2Handler;->getSearchActionIntentFromPeanut(Landroid/content/Context;Lcom/google/majel/proto/PeanutProtos$Peanut;)Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    const/4 v1, 0x1

    .line 30
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
