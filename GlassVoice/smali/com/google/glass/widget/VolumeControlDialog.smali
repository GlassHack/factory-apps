.class public Lcom/google/glass/widget/VolumeControlDialog;
.super Landroid/app/Dialog;
.source "VolumeControlDialog.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;
.implements Lcom/google/glass/widget/ValueSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;,
        Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;,
        Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_SCROLL_DAMPER:F = 0.5f

.field private static final PLAY_DING_DELAY_MILLIS:J = 0x64L

.field private static final headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioManager:Lcom/google/glass/android/media/AudioManager;

.field private headsetPlugReceiver:Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;

.field private isInPhoneCall:Z

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final phoneCallReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private playDingRunnable:Ljava/lang/Runnable;

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final valueSlider:Lcom/google/glass/widget/ValueSlider;

.field private volumeObserver:Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;

.field private wasVolumeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "headsetPlugReceiver"

    .line 47
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOffReceiver"

    .line 50
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/VolumeControlDialog;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    sget v3, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance v3, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;

    invoke-direct {v3, p0, v8}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;-><init>(Lcom/google/glass/widget/VolumeControlDialog;Lcom/google/glass/widget/VolumeControlDialog$1;)V

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;

    .line 59
    new-instance v3, Lcom/google/glass/widget/VolumeControlDialog$1;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "android.intent.action.SCREEN_OFF"

    aput-object v5, v4, v6

    invoke-direct {v3, p0, v4}, Lcom/google/glass/widget/VolumeControlDialog$1;-><init>(Lcom/google/glass/widget/VolumeControlDialog;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 78
    new-instance v3, Lcom/google/glass/widget/VolumeControlDialog$2;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    aput-object v5, v4, v6

    invoke-direct {v3, p0, v4}, Lcom/google/glass/widget/VolumeControlDialog$2;-><init>(Lcom/google/glass/widget/VolumeControlDialog;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->phoneCallReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 99
    new-instance v3, Lcom/google/glass/widget/VolumeControlDialog$3;

    invoke-direct {v3, p0}, Lcom/google/glass/widget/VolumeControlDialog$3;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v3, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 122
    iput-object p2, p0, Lcom/google/glass/widget/VolumeControlDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 123
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    .line 126
    new-instance v3, Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v3, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v3

    .line 128
    invoke-virtual {v3, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setFingerListener(Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v2

    .line 129
    .local v2, "gestureDetector":Lcom/google/android/glass/touchpad/GestureDetector;
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog$4;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/glass/widget/VolumeControlDialog$4;-><init>(Lcom/google/glass/widget/VolumeControlDialog;Landroid/content/Context;Lcom/google/android/glass/touchpad/GestureDetector;)V

    .line 140
    .local v0, "cardScrollView":Lcom/google/android/glass/widget/CardScrollView;
    invoke-virtual {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/VolumeControlDialog;->setContentView(Landroid/view/View;)V

    .line 144
    new-instance v1, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;

    invoke-direct {v1, p1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "frameLayoutCard":Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
    new-instance v3, Lcom/google/glass/widget/ValueSlider;

    invoke-direct {v3, p1}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    .line 146
    iget-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, v3}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->addView(Landroid/view/View;)V

    .line 147
    new-instance v3, Lcom/google/glass/widget/SingleCardScrollAdapter;

    invoke-direct {v3, v1, v1}, Lcom/google/glass/widget/SingleCardScrollAdapter;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 150
    new-instance v3, Lcom/google/glass/widget/VolumeControlDialog$5;

    invoke-direct {v3, p0}, Lcom/google/glass/widget/VolumeControlDialog$5;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    invoke-virtual {v0, v3}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    new-instance v3, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;

    invoke-direct {v3, p0, v8}, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;-><init>(Lcom/google/glass/widget/VolumeControlDialog;Lcom/google/glass/widget/VolumeControlDialog$1;)V

    invoke-super {p0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 162
    iget-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v3, p0}, Lcom/google/glass/widget/ValueSlider;->addListener(Lcom/google/glass/widget/ValueSlider$Listener;)V

    .line 163
    invoke-direct {p0}, Lcom/google/glass/widget/VolumeControlDialog;->initSlider()V

    .line 166
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 167
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/widget/VolumeControlDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/VolumeControlDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/widget/VolumeControlDialog;->isInPhoneCall:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/VolumeControlDialog;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/widget/VolumeControlDialog;->initSlider()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/widget/VolumeControlDialog;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/VolumeControlDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/widget/VolumeControlDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/VolumeControlDialog;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->wasVolumeSet:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/widget/VolumeControlDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/VolumeControlDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/glass/widget/VolumeControlDialog;->wasVolumeSet:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/widget/VolumeControlDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/VolumeControlDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getBestStreamType()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->isInPhoneCall:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v0}, Lcom/google/glass/android/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x3

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initSlider()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 184
    iget-object v5, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v5}, Lcom/google/glass/widget/ValueSlider;->isOffset()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getBestStreamType()I

    move-result v2

    .line 189
    .local v2, "stream":I
    iget-object v5, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v5, v2}, Lcom/google/glass/android/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 190
    .local v4, "volume":I
    iget-object v5, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v5, v2}, Lcom/google/glass/android/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 191
    .local v1, "maxVolume":I
    sget-object v5, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Initializing slider with stream=%d, volume=%d, maxVolume=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 191
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 194
    .local v3, "valueToIconResource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/google/glass/common/R$drawable;->ic_volume_0_150:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {v0, v1}, Lcom/google/glass/sound/VolumeUtils;->isHighVolumeRatio(II)Z

    move-result v5

    if-nez v5, :cond_1

    if-ge v0, v1, :cond_1

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/google/glass/common/R$drawable;->ic_volume_1_150:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    sget v6, Lcom/google/glass/common/R$drawable;->ic_volume_2_150:I

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v3, v6, v7, v4}, Lcom/google/glass/widget/ValueSlider;->init(Ljava/util/Map;III)V

    goto :goto_0
.end method

.method private logVolume(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 8
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 234
    invoke-direct {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getBestStreamType()I

    move-result v2

    .line 235
    .local v2, "stream":I
    iget-object v4, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v4, v2}, Lcom/google/glass/android/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 236
    .local v3, "volume":I
    iget-object v4, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v4, v2}, Lcom/google/glass/android/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 237
    .local v0, "maxVolume":I
    const/4 v4, 0x0

    int-to-float v5, v3

    int-to-float v6, v0

    div-float/2addr v5, v6

    mul-float/2addr v5, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v1, v4

    .line 238
    .local v1, "percent":I
    iget-object v4, p0, Lcom/google/glass/widget/VolumeControlDialog;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string/jumbo v5, "v"

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 238
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 241
    return-void
.end method


# virtual methods
.method public onFingerCountChanged(II)V
    .locals 5
    .param p1, "previousCount"    # I
    .param p2, "currentCount"    # I

    .prologue
    .line 257
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 258
    .local v0, "wentDown":Z
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, p2, v0}, Lcom/google/glass/widget/ValueSlider;->onFingerCountChanged(IZ)V

    .line 261
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    iget-object v2, p0, Lcom/google/glass/widget/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/ValueSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    iget-object v2, p0, Lcom/google/glass/widget/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/widget/ValueSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :cond_0
    return-void

    .line 257
    .end local v0    # "wentDown":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcom/google/android/glass/touchpad/Gesture;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/ValueSlider;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    return v0
.end method

.method public onScroll(FFF)Z
    .locals 3
    .param p1, "displacement"    # F
    .param p2, "delta"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    neg-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ValueSlider;->onScroll(F)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 205
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;

    .line 206
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->phoneCallReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 210
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/VolumeControlDialog;->logVolume(Lcom/google/glass/userevent/UserEventAction;)V

    .line 212
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;-><init>(Lcom/google/glass/widget/VolumeControlDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeObserver:Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeObserver:Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->wasVolumeSet:Z

    .line 217
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 223
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeObserver:Lcom/google/glass/widget/VolumeControlDialog$VolumeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;

    .line 225
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 224
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->phoneCallReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 229
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/VolumeControlDialog;->logVolume(Lcom/google/glass/userevent/UserEventAction;)V

    .line 230
    return-void
.end method

.method public onValueChanged(I)V
    .locals 7
    .param p1, "volume"    # I

    .prologue
    const/4 v6, 0x0

    .line 245
    invoke-direct {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getBestStreamType()I

    move-result v0

    .line 246
    .local v0, "stream":I
    sget-object v1, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "new volume=%d, stream=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->audioManager:Lcom/google/glass/android/media/AudioManager;

    invoke-interface {v1, v0, p1, v6}, Lcom/google/glass/android/media/AudioManager;->setStreamVolume(III)V

    .line 248
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 278
    return-void
.end method
