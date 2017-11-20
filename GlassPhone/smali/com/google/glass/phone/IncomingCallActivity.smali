.class public Lcom/google/glass/phone/IncomingCallActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "IncomingCallActivity.java"


# static fields
.field public static final EXTRA_IS_FROM_SCREEN_OFF:Ljava/lang/String; = "is_from_screen_off"

.field private static final PHONE_CALL_SERVICE:Landroid/content/ComponentName;


# instance fields
.field final audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field audioManager:Landroid/media/AudioManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private callAccepted:Z

.field private callerId:Landroid/widget/TextView;

.field private callerPhoto:Landroid/widget/ImageView;

.field private imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

.field private isFromScreenOff:Z

.field private final listener:Lcom/google/glass/phone/SimplePhoneCallListener;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private menusEnabled:Z

.field private final phoneCallConnection:Lcom/google/glass/util/SafeServiceConnection;

.field power:Lcom/google/glass/util/PowerHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private service:Lcom/google/glass/phone/PhoneCallService;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.phone"

    const-string v2, "com.google.glass.phone.PhoneCallService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/phone/IncomingCallActivity;->PHONE_CALL_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 44
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 53
    new-instance v0, Lcom/google/glass/phone/IncomingCallActivity$1;

    sget-object v1, Lcom/google/glass/phone/IncomingCallActivity;->PHONE_CALL_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/phone/IncomingCallActivity$1;-><init>(Lcom/google/glass/phone/IncomingCallActivity;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->phoneCallConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 75
    new-instance v0, Lcom/google/glass/phone/IncomingCallActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/IncomingCallActivity$2;-><init>(Lcom/google/glass/phone/IncomingCallActivity;)V

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->listener:Lcom/google/glass/phone/SimplePhoneCallListener;

    .line 124
    new-instance v0, Lcom/google/glass/phone/IncomingCallActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/IncomingCallActivity$3;-><init>(Lcom/google/glass/phone/IncomingCallActivity;)V

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 143
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 158
    iput-boolean v2, p0, Lcom/google/glass/phone/IncomingCallActivity;->callAccepted:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    .line 164
    iput-boolean v2, p0, Lcom/google/glass/phone/IncomingCallActivity;->isFromScreenOff:Z

    return-void
.end method

.method private acceptCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Accepting call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callAccepted:Z

    .line 295
    iput-boolean v3, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    .line 296
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastAcceptCall(Landroid/content/Context;)V

    .line 297
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->logPhoneCallAction(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/phone/PhoneCallService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->service:Lcom/google/glass/phone/PhoneCallService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCallService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p1, "x1"    # Lcom/google/glass/phone/PhoneCallService;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/phone/IncomingCallActivity;->service:Lcom/google/glass/phone/PhoneCallService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/phone/SimplePhoneCallListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->listener:Lcom/google/glass/phone/SimplePhoneCallListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p1, "x1"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/glass/phone/IncomingCallActivity;->updateUi(Lcom/google/glass/phone/PhoneCall;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/phone/IncomingCallActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/glass/phone/IncomingCallActivity;->updateUi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/glass/phone/IncomingCallActivity;->updateUi(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-void
.end method

.method static synthetic access$602(Lcom/google/glass/phone/IncomingCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/phone/IncomingCallActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/phone/IncomingCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/glass/phone/IncomingCallActivity;->callAccepted:Z

    return p1
.end method

.method private declineCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Declining call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iput-boolean v3, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    .line 304
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/phone/R$string;->phone_call_hanging_up:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastRejectCall(Landroid/content/Context;)V

    .line 306
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->logPhoneCallAction(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/google/glass/phone/IncomingCallActivity;->finishAndTurnScreenOffIfRequested()V

    .line 308
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 195
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "handle intent"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iput-boolean v4, p0, Lcom/google/glass/phone/IncomingCallActivity;->callAccepted:Z

    .line 197
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    sget v2, Lcom/google/glass/phone/R$string;->phone_call_incoming:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v2, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    invoke-virtual {v1, v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 205
    :cond_0
    iput-object v5, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    .line 206
    iput-boolean v4, p0, Lcom/google/glass/phone/IncomingCallActivity;->isFromScreenOff:Z

    .line 208
    if-eqz p1, :cond_1

    .line 209
    const-string v1, "is_from_screen_off"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->isFromScreenOff:Z

    .line 210
    const-string v1, "phone_call"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/phone/PhoneCall;

    .line 211
    .local v0, "call":Lcom/google/glass/phone/PhoneCall;
    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->updateUi(Lcom/google/glass/phone/PhoneCall;)V

    .line 215
    .end local v0    # "call":Lcom/google/glass/phone/PhoneCall;
    :cond_1
    return-void
.end method

.method private loadUserImage(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 9
    .param p1, "caller"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/google/glass/phone/IncomingCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 356
    .local v8, "display":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No prior loading task, starting a new one."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    new-instance v0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    .line 359
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v4, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerPhoto:Landroid/widget/ImageView;

    const/4 v5, 0x0

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    .line 364
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Task is already running."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logPhoneCallAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "u"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 378
    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private updateUi(Lcom/google/glass/phone/PhoneCall;)V
    .locals 5
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "PhoneCall was null, not processing update to UI."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Updating UI from call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->isMissedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/google/glass/phone/IncomingCallActivity;->finishAndTurnScreenOffIfRequested()V

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->updateUi(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0
.end method

.method private updateUi(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 6
    .param p1, "caller"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 340
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Updating UI from caller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    if-nez p1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/glass/phone/IncomingCallActivity;->loadUserImage(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/phone/IncomingCallActivity;->updateUi(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateUi(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Updating UI from phone number."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/phone/R$string;->phone_call_incoming:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/glass/phone/IncomingCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 182
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 184
    sget v0, Lcom/google/glass/phone/R$id;->caller_profile_picture:I

    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerPhoto:Landroid/widget/ImageView;

    .line 185
    sget v0, Lcom/google/glass/phone/R$id;->caller_id:I

    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callerId:Landroid/widget/TextView;

    .line 187
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->audioManager:Landroid/media/AudioManager;

    .line 188
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/phone/IncomingCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/phone/IncomingCallActivity;->handleIntent(Landroid/content/Intent;)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->phoneCallConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 191
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 264
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 265
    invoke-virtual {p0}, Lcom/google/glass/phone/IncomingCallActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$menu;->call_setup_menu:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->imageLoadingTask:Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->service:Lcom/google/glass/phone/PhoneCallService;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->service:Lcom/google/glass/phone/PhoneCallService;

    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->listener:Lcom/google/glass/phone/SimplePhoneCallListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCallService;->removeListener(Lcom/google/glass/phone/IPhoneCallListener;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->phoneCallConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 248
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 249
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/google/glass/phone/IncomingCallActivity;->declineCall()V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 279
    .local v0, "spoken":Z
    :goto_0
    iget-object v3, p0, Lcom/google/glass/phone/IncomingCallActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/google/glass/util/ContextualMenuLogger;->logContexualCommand(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/CharSequence;Z)V

    .line 280
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lcom/google/glass/phone/R$id;->incoming_call_answer:I

    if-ne v3, v4, :cond_1

    .line 281
    iget-object v3, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Call accepted from menu."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0}, Lcom/google/glass/phone/IncomingCallActivity;->acceptCall()V

    .line 289
    :goto_1
    return v1

    .end local v0    # "spoken":Z
    :cond_0
    move v0, v2

    .line 278
    goto :goto_0

    .line 284
    .restart local v0    # "spoken":Z
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lcom/google/glass/phone/R$id;->incoming_call_decline:I

    if-ne v3, v4, :cond_2

    .line 285
    iget-object v3, p0, Lcom/google/glass/phone/IncomingCallActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Call declined from menu."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-direct {p0}, Lcom/google/glass/phone/IncomingCallActivity;->declineCall()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 289
    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/google/glass/phone/IncomingCallActivity;->handleIntent(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 271
    sget v0, Lcom/google/glass/phone/R$id;->incoming_call_answer:I

    invoke-interface {p3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    sget v0, Lcom/google/glass/phone/R$id;->incoming_call_decline:I

    invoke-interface {p3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    iget-boolean v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->menusEnabled:Z

    return v0
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 235
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 236
    return-void
.end method

.method protected onStartInternal()V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStartInternal()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 223
    return-void
.end method

.method protected onStopInternal()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStopInternal()V

    .line 229
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 230
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/google/glass/phone/R$layout;->call_setup_activity:I

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->isFromScreenOff:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/phone/IncomingCallActivity;->callAccepted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
