.class public abstract Lcom/google/glass/phone/PhoneCallRemoteViewManager;
.super Ljava/lang/Object;
.source "PhoneCallRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCallRemoteViewManager$4;,
        Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final handler:Landroid/os/Handler;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private callerIdMatch:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private final context:Landroid/content/Context;

.field private currentCall:Lcom/google/glass/phone/PhoneCall;

.field private remoteViews:Landroid/widget/RemoteViews;

.field private final stateChangeReceiver:Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stateChangeReceiver"

    .line 35
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;Lcom/google/glass/phone/PhoneCallRemoteViewManager$1;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stateChangeReceiver:Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/glass/phone/R$layout;->call_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stateChangeReceiver:Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stopCallTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->updateCallActionIcon()V

    return-void
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stateChangeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private registerStateChangeReceiver()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$1;-><init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private stopCallTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_status:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_timer:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 191
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_timer:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 192
    return-void
.end method

.method private unregisterStateChangeReceiver()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager$2;

    invoke-direct {v1, p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$2;-><init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method private updateCallActionIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    sget-object v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updating call action item."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    .line 157
    .local v0, "isMuted":Z
    sget-object v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Is muted? %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/google/glass/phone/R$id;->phone_call_current_action:I

    sget v3, Lcom/google/glass/phone/R$drawable;->ic_microphone_off_50:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 180
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    if-eqz v1, :cond_1

    .line 163
    sget-object v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager$4;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/google/glass/phone/R$id;->phone_call_current_action:I

    sget v3, Lcom/google/glass/phone/R$drawable;->ic_phone_in_50:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/google/glass/phone/R$id;->phone_call_current_action:I

    sget v3, Lcom/google/glass/phone/R$drawable;->ic_phone_out_50:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/google/glass/phone/R$id;->phone_call_current_action:I

    sget v3, Lcom/google/glass/phone/R$drawable;->ic_phone_in_50:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallTimer()V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_status:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_timer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 185
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/google/glass/phone/R$id;->phone_call_timer:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 186
    return-void
.end method

.method private updateCallerPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 9
    .param p1, "callerId"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 199
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->callerIdMatch:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Caller id was already matched."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v2, Lcom/google/glass/phone/R$id;->phone_call_caller_profile_picture:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->callerIdMatch:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 208
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->callerIdMatch:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    sget-object v1, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Loading user\'s image. %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 212
    .local v8, "display":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    .line 213
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/CachedBitmapFactory;

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$3;-><init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 236
    .local v0, "imageTask":Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    goto :goto_0
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentCall()Lcom/google/glass/phone/PhoneCall;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method

.method protected getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public abstract hidePhoneCall()V
.end method

.method protected abstract invalidate()V
.end method

.method protected onAttached()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Remote view attached."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->registerStateChangeReceiver()V

    .line 85
    return-void
.end method

.method protected onDetached()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Remote view detached."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stopCallTimer()V

    .line 90
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->unregisterStateChangeReceiver()V

    .line 91
    return-void
.end method

.method processCall(Lcom/google/glass/phone/PhoneCall;)V
    .locals 8
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->stopCallTimer()V

    .line 96
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Parsing the phone call."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->updateCallerPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->hasError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Call has an error."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v3, Lcom/google/glass/phone/R$id;->phone_call_status:I

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/phone/R$string;->phone_call_failed:I

    .line 103
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 102
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->updateCallActionIcon()V

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->invalidate()V

    .line 134
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v0

    .line 106
    .local v0, "accepted":Z
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Call was accepted? %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->updateCallTimer()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v1

    .line 111
    .local v1, "direction":Lcom/google/glass/phone/PhoneCall$CallDirection;
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Call direction: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager$4;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v3, Lcom/google/glass/phone/R$id;->phone_call_status:I

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/phone/R$string;->phone_call_incoming:I

    .line 115
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :pswitch_1
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setting icon"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    sget v3, Lcom/google/glass/phone/R$id;->phone_call_status:I

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/phone/R$string;->phone_call_calling:I

    .line 120
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v2, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "How are we UNKNOWN and have not accepted the call? Something is broken here."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setCurrentCall(Lcom/google/glass/phone/PhoneCall;)V
    .locals 1
    .param p1, "currentCall"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->callerIdMatch:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->processCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 80
    return-void
.end method

.method setRemoteViewsForTests(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 277
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->remoteViews:Landroid/widget/RemoteViews;

    .line 278
    return-void
.end method

.method public abstract showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V
.end method
