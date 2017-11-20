.class public Lcom/google/glass/settings/ui/VolumeSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "VolumeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final VOLUME_POLL_INTERVAL_SECONDS:I = 0x5

.field private static final headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioManager:Lcom/google/glass/android/media/AudioManager;

.field private final handler:Landroid/os/Handler;

.field private final headsetPlugReceiver:Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;

.field private final icon:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;

.field private final updateRunnable:Ljava/lang/Runnable;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    sget-object v0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "headsetPlugReceiver"

    .line 36
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v1, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->headsetPlugReceiver:Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;

    .line 53
    new-instance v1, Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->updateRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 75
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->audioManager:Lcom/google/glass/android/media/AudioManager;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$layout;->volume_settings_item:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    sget v1, Lcom/google/glass/settings/ui/R$id;->icon:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;

    .line 78
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, "header":Landroid/widget/TextView;
    sget v1, Lcom/google/glass/settings/ui/R$string;->volume_settings_header:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->text:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->handler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->updateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Lcom/google/glass/android/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->audioManager:Lcom/google/glass/android/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private update()V
    .locals 3

    .prologue
    .line 108
    new-instance v1, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    .line 136
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onAttachedToWindow()V

    .line 88
    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->headsetPlugReceiver:Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;

    .line 89
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->update()V

    .line 93
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->updateRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void
.end method

.method public onConfirm()Z
    .locals 6

    .prologue
    .line 143
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 145
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 146
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v2, v1}, Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 147
    .local v0, "dialog":Lcom/google/glass/widget/VolumeControlDialog;
    new-instance v1, Lcom/google/glass/settings/ui/VolumeSettingsItemView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$3;-><init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 153
    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->show()V

    .line 156
    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "c"

    const-string v4, "settings"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 99
    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->headsetPlugReceiver:Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;

    .line 100
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
