.class public Lcom/google/glass/home/timeline/active/GuardPhraseView;
.super Lcom/google/glass/widget/RotatingTipsView;
.source "GuardPhraseView.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/GuardPhraseView$3;,
        Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;,
        Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;,
        Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final callStateReceiver:Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;

.field private final companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final errorCheckRunnable:Ljava/lang/Runnable;

.field private final storageHelper:Lcom/google/glass/util/StorageHelper;

.field private final tipBatteryLow:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

.field private final tipCheckMyGlass:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

.field private final tipDeviceHot:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

.field private final tipInCall:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

.field private final tipStorageFull:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

.field private final tipStorageLow:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;Lcom/google/glass/home/timeline/active/GuardPhraseView$1;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;

    .line 41
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    sget v1, Lcom/google/glass/home/R$string;->phone_call_in_call:I

    const-string v2, "1"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipInCall:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .line 43
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    sget v1, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    const-string v2, "3"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipCheckMyGlass:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .line 45
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    sget v1, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    const-string v2, "4"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipStorageFull:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .line 47
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    sget v1, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    const-string v2, "5"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipStorageLow:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .line 49
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    sget v1, Lcom/google/glass/home/R$string;->home_error_battery_low:I

    const-string v2, "6"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipBatteryLow:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .line 51
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    sget v1, Lcom/google/glass/home/R$string;->home_error_device_hot:I

    const-string v2, "7"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipDeviceHot:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .line 54
    new-instance v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    invoke-direct {v0, p0, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;Lcom/google/glass/home/timeline/active/GuardPhraseView$1;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->errorCheckRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;

    .line 158
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 159
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 160
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 161
    sget v0, Lcom/google/glass/home/R$string;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->setTip(I)V

    .line 162
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipInCall:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/BatteryHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/StorageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipCheckMyGlass:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipStorageFull:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipStorageLow:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipBatteryLow:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipDeviceHot:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private checkForErrors()V
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting initial error check."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 207
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->errorCheckRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->executeIfNotQueued(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method


# virtual methods
.method protected getTipTextSize()F
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$dimen;->medium_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getTipTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 221
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->showDefaultTip()V

    .line 166
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 167
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->checkForErrors()V

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->startRotating()V

    .line 190
    return-void
.end method

.method protected onShowTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V
    .locals 3
    .param p1, "tip"    # Lcom/google/glass/widget/RotatingTipsView$Tip;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/google/glass/widget/RotatingTipsView$Tip;->isDefault()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    check-cast p1, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    .end local p1    # "tip":Lcom/google/glass/widget/RotatingTipsView$Tip;
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;->getUserEventData()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "userEventData":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->HOME_SCREEN_TIP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 264
    .end local v0    # "userEventData":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStateChange(ZII)V
    .locals 1
    .param p1, "isConnected"    # Z
    .param p2, "remoteVersion"    # I
    .param p3, "localVersion"    # I

    .prologue
    .line 226
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipCheckMyGlass:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView;->tipCheckMyGlass:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    goto :goto_0
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 178
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->showDefaultTip()V

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->stopRotating()V

    .line 195
    return-void
.end method
