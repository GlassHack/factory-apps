.class public Lcom/google/glass/home/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;,
        Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DELAY_SILENCE_LENGTH_MS:J = 0x1388L

.field private static final MAXIMUM_DELAY_LENGTH_MS:J = 0x61a8L

.field private static final MSG_END_NOTIFICATION_WINDOW_DETECTOR:I = 0x0

.field private static final NOTIFYING_SOUND_THRESHOLD_MS:J = 0x7d0L

.field private static final STANDARD_NOTIFICATION_WINDOW_MS:J = 0x1388L

.field private static final donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final timelineUpdateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

.field private final donStateReceiver:Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;

.field private final endpointListener:Lcom/google/glass/home/voice/EndpointListener;

.field private eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

.field private headGestureManager:Lcom/google/android/glass/head/HeadGestureManager;

.field private lastNotifyingSoundTime:J

.field private lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

.field private final notificationWindowHandler:Landroid/os/Handler;

.field private final onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private recognizer:Landroid/speech/SpeechRecognizer;

.field private final rluListener:Lcom/google/android/glass/head/HeadGestureManager$Listener;

.field private final screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineUpdatedReceiver:Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;

.field private final touchpadListener:Lcom/google/android/glass/touchpad/TouchpadManager$Listener;

.field private touchpadManager:Lcom/google/android/glass/touchpad/TouchpadManager;

.field private ttsHelper:Lcom/google/glass/util/TtsHelper;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    sget-object v0, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "donStateReceiver"

    .line 60
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/NotificationService;->donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 62
    sget-object v0, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "timelineUpdateReceiver"

    .line 63
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/NotificationService;->timelineUpdateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Lcom/google/glass/home/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/NotificationService$1;-><init>(Lcom/google/glass/home/NotificationService;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->touchpadListener:Lcom/google/android/glass/touchpad/TouchpadManager$Listener;

    .line 102
    new-instance v0, Lcom/google/glass/home/NotificationService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/NotificationService$2;-><init>(Lcom/google/glass/home/NotificationService;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    .line 112
    new-instance v0, Lcom/google/glass/home/NotificationService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/NotificationService$3;-><init>(Lcom/google/glass/home/NotificationService;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->rluListener:Lcom/google/android/glass/head/HeadGestureManager$Listener;

    .line 120
    new-instance v0, Lcom/google/glass/home/NotificationService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/home/NotificationService$4;-><init>(Lcom/google/glass/home/NotificationService;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    .line 128
    new-instance v0, Lcom/google/glass/home/NotificationService$5;

    invoke-direct {v0, p0}, Lcom/google/glass/home/NotificationService$5;-><init>(Lcom/google/glass/home/NotificationService;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->notificationWindowHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;-><init>(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/NotificationService$1;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->donStateReceiver:Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;

    .line 140
    new-instance v0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-direct {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    .line 147
    new-instance v0, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;-><init>(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/NotificationService$1;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->timelineUpdatedReceiver:Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;

    .line 161
    new-instance v0, Lcom/google/glass/home/voice/EndpointListener;

    invoke-direct {v0}, Lcom/google/glass/home/voice/EndpointListener;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/NotificationService;->endpointListener:Lcom/google/glass/home/voice/EndpointListener;

    .line 429
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/NotificationService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->showNotificationIfNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p1, "x1"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->playNotificationSound(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/home/NotificationService;)Landroid/speech/SpeechRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->recognizer:Landroid/speech/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/glass/home/NotificationService;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p1, "x1"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/home/NotificationService;->recognizer:Landroid/speech/SpeechRecognizer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/home/voice/EndpointListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->endpointListener:Lcom/google/glass/home/voice/EndpointListener;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/home/NotificationService;->timelineUpdateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p1, "x1"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->openNotificationWindow(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/NotificationService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->closeNotificationWindow(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/util/TtsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/home/NotificationService;->donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    return-object v0
.end method

.method private closeNotificationWindow(Z)V
    .locals 5
    .param p1, "notificationShown"    # Z

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    if-nez v1, :cond_0

    .line 205
    sget-object v1, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Notification window is already closed."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v1, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Closing notification window."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    .line 211
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    invoke-direct {p0, v4}, Lcom/google/glass/home/NotificationService;->toggleUserInteractions(Z)V

    .line 215
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->headGestureManager:Lcom/google/android/glass/head/HeadGestureManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/glass/head/HeadGestureManager;->setGlobalLookUpInhibitionWindow(J)V

    .line 218
    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 221
    .local v0, "notificationShownStr":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_SHOW_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "n"

    new-array v4, v4, [Ljava/lang/Object;

    .line 222
    invoke-static {v3, v0, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v0    # "notificationShownStr":Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private isHeadWakeEnabled()Z
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "head_wake_up_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logScreenOn(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private openNotificationWindow(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 5
    .param p1, "incomingNotification"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    const-wide/16 v3, 0x1388

    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    if-nez v2, :cond_1

    move v0, v1

    .line 180
    .local v0, "isNewWindow":Z
    :goto_0
    iput-object p1, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, v1}, Lcom/google/glass/home/NotificationService;->toggleUserInteractions(Z)V

    .line 186
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-direct {p0, v1}, Lcom/google/glass/home/NotificationService;->playNotificationSound(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    .line 191
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/google/glass/home/NotificationService;->scheduleWindowClose(J)V

    .line 195
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->headGestureManager:Lcom/google/android/glass/head/HeadGestureManager;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/glass/head/HeadGestureManager;->setGlobalLookUpInhibitionWindow(J)V

    .line 196
    return-void

    .line 178
    .end local v0    # "isNewWindow":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playNotificationSound(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 6
    .param p1, "notification"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 381
    iget-wide v1, p0, Lcom/google/glass/home/NotificationService;->lastNotifyingSoundTime:J

    const-wide/16 v3, 0x7d0

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemNotification;->getNumOfNotifications()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_MULTIPLE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 384
    .local v0, "sound":Lcom/google/glass/sound/SoundManager$SoundId;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 385
    sget-object v1, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x41

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Notification sound played at epoch time (ms) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/home/NotificationService;->lastNotifyingSoundTime:J

    .line 388
    .end local v0    # "sound":Lcom/google/glass/sound/SoundManager$SoundId;
    :cond_0
    return-void

    .line 382
    :cond_1
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0
.end method

.method private scheduleWindowClose(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    return-void
.end method

.method private shouldUseLAS()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 330
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->LASER_RLU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_glance_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showNotificationIfNeeded(Ljava/lang/String;)Z
    .locals 8
    .param p1, "eventSource"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 244
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    const-wide/16 v2, 0x1388

    .line 245
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/home/timeline/TimelineItemNotification;->shouldNotify(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    .line 246
    invoke-virtual {v1}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->handlePendingWifiSetup()Z

    move-result v1

    if-nez v1, :cond_1

    move v7, v4

    .line 249
    .local v7, "shouldShow":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 250
    sget-object v1, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Displaying the notification, triggered by: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 253
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "is_notification"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    new-instance v5, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v5}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 257
    .local v5, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 258
    const-string v0, "notificationStopwatch"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->isInBundle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->getItemId()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    .line 262
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->getBundleItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->currentNotification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->getBundleItemId()Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v3

    move-object v0, p0

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZLcom/google/glass/time/Stopwatch;)V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->logScreenOn(Ljava/lang/String;)V

    .line 274
    .end local v5    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, v7}, Lcom/google/glass/home/NotificationService;->closeNotificationWindow(Z)V

    .line 276
    return v7

    .end local v7    # "shouldShow":Z
    :cond_1
    move v7, v0

    .line 246
    goto :goto_0

    .line 265
    .restart local v5    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "shouldShow":Z
    :cond_2
    invoke-static {p0, v6}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private toggleLookAtScreen(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 372
    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/home/NotificationService;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->register(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/home/NotificationService;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->unregister(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    goto :goto_0
.end method

.method private toggleRelativeLookUp(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->headGestureManager:Lcom/google/android/glass/head/HeadGestureManager;

    sget-object v1, Lcom/google/android/glass/head/HeadGesture;->RELATIVE_LOOK_UP:Lcom/google/android/glass/head/HeadGesture;

    iget-object v2, p0, Lcom/google/glass/home/NotificationService;->rluListener:Lcom/google/android/glass/head/HeadGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/head/HeadGestureManager;->registerOneShot(Lcom/google/android/glass/head/HeadGesture;Lcom/google/android/glass/head/HeadGestureManager$Listener;)Z

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->headGestureManager:Lcom/google/android/glass/head/HeadGestureManager;

    sget-object v1, Lcom/google/android/glass/head/HeadGesture;->RELATIVE_LOOK_UP:Lcom/google/android/glass/head/HeadGesture;

    iget-object v2, p0, Lcom/google/glass/home/NotificationService;->rluListener:Lcom/google/android/glass/head/HeadGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/head/HeadGestureManager;->unregister(Lcom/google/android/glass/head/HeadGesture;Lcom/google/android/glass/head/HeadGestureManager$Listener;)Z

    goto :goto_0
.end method

.method private toggleTouchpadIntercept(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->touchpadManager:Lcom/google/android/glass/touchpad/TouchpadManager;

    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->touchpadListener:Lcom/google/android/glass/touchpad/TouchpadManager$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/TouchpadManager;->register(Lcom/google/android/glass/touchpad/TouchpadManager$Listener;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->touchpadManager:Lcom/google/android/glass/touchpad/TouchpadManager;

    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->touchpadListener:Lcom/google/android/glass/touchpad/TouchpadManager$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/TouchpadManager;->unregister(Lcom/google/android/glass/touchpad/TouchpadManager$Listener;)V

    goto :goto_0
.end method

.method private toggleUserInteractions(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/glass/home/NotificationService;->shouldUseLAS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    sget-object v0, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using LAS instead of RLU."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->toggleLookAtScreen(Z)V

    .line 352
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->toggleTouchpadIntercept(Z)V

    .line 353
    return-void

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/home/NotificationService;->isHeadWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService;->toggleRelativeLookUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 282
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 283
    new-instance v1, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 284
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/TtsHelper;

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 286
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 287
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 288
    invoke-static {p0}, Lcom/google/android/glass/head/HeadGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->headGestureManager:Lcom/google/android/glass/head/HeadGestureManager;

    .line 289
    invoke-static {p0}, Lcom/google/android/glass/touchpad/TouchpadManager;->get(Landroid/content/Context;)Lcom/google/android/glass/touchpad/TouchpadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/NotificationService;->touchpadManager:Lcom/google/android/glass/touchpad/TouchpadManager;

    .line 291
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 294
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 297
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->timelineUpdatedReceiver:Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->donStateReceiver:Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 301
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 305
    sget-object v1, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onDestroy called, this should only happen if the system is coming down."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-virtual {v1}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->unregister()V

    .line 308
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 309
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->timelineUpdatedReceiver:Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/NotificationService$TimelineUpdateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 310
    iget-object v1, p0, Lcom/google/glass/home/NotificationService;->donStateReceiver:Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 311
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 312
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 316
    sget-object v0, Lcom/google/glass/home/NotificationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStartCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 322
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 325
    iget-object v0, p0, Lcom/google/glass/home/NotificationService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 326
    return-void
.end method
