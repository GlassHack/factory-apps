.class Lcom/google/glass/voice/actions/ActionV2Handler;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    const/4 v1, 0x0

    .line 68
    const/16 v0, 0x3d

    invoke-static {p0, v0}, Lcom/google/glass/voice/actions/ActionV2Handler;->logActionResponseReceived(Landroid/content/Context;I)V

    .line 69
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 73
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

    move-result-object v0

    return-object v0
.end method

.method private getSearchActionIntentFromPeanut(Landroid/content/Context;Lcom/google/b/a/gw;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    iget-object v0, p2, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    if-nez v0, :cond_1

    move-object v0, v2

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/actions/ActionV2Handler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "actionV2 found."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {p2}, Lcom/google/glass/voice/actions/NavigationActionsUtils;->getNavigationIntentFromPeanut(Lcom/google/b/a/gw;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    move v0, v1

    .line 46
    :goto_1
    iget-object v3, p2, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 47
    iget-object v3, p2, Lcom/google/b/a/gw;->h:[Lcom/google/b/a/o;

    aget-object v3, v3, v0

    .line 48
    iget-object v4, v3, Lcom/google/b/a/o;->a:Lcom/google/b/a/p;

    invoke-virtual {v4}, Lcom/google/b/a/p;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, v3, Lcom/google/b/a/o;->a:Lcom/google/b/a/p;

    invoke-virtual {v0}, Lcom/google/b/a/p;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lcom/google/glass/voice/actions/ActionV2Handler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Search action not recognized"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 58
    goto :goto_0

    .line 53
    :pswitch_0
    invoke-static {p1}, Lcom/google/glass/voice/actions/ActionV2Handler;->getCameraActionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-static {p1}, Lcom/google/glass/voice/actions/ActionV2Handler;->getVideoActionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

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

    .prologue
    .line 80
    const/16 v0, 0x3e

    invoke-static {p0, v0}, Lcom/google/glass/voice/actions/ActionV2Handler;->logActionResponseReceived(Landroid/content/Context;I)V

    .line 81
    new-instance v1, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    const/4 v3, 0x1

    .line 82
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/glass/camera/CameraHelper;->getRecordVideoIntent(ZLcom/google/glass/sound/SoundManager;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static logActionResponseReceived(Landroid/content/Context;I)V
    .locals 5

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
.method public handleAction(Landroid/content/Context;Lcom/google/b/a/gw;)Z
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/actions/ActionV2Handler;->getSearchActionIntentFromPeanut(Landroid/content/Context;Lcom/google/b/a/gw;)Landroid/content/Intent;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
