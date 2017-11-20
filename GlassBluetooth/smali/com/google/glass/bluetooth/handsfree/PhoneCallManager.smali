.class public Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
.super Ljava/lang/Object;
.source "PhoneCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final MINIMUM_TRANSFER_TIME:J = 0x7d0L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final stateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private appContext:Landroid/content/Context;

.field private callSetupState:I

.field private callState:I

.field private final connection:Lcom/google/glass/phone/PhoneCallManagerServiceConnection;

.field private currentCall:Lcom/google/glass/phone/PhoneCall;

.field private entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

.field private final helper:Lcom/google/glass/phone/PhoneCallHelper;

.field private interactionOnGlass:Z

.field listener:Lcom/google/glass/phone/IPhoneCallListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field stateReceiver:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stateReceiver"

    .line 36
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->stateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.ACCEPT_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.glass.action.CALL_DIAL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.glass.action.REJECT_CALL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->stateReceiver:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;

    .line 55
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->connection:Lcom/google/glass/phone/PhoneCallManagerServiceConnection;

    .line 109
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->createNewPhoneCall()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->helper:Lcom/google/glass/phone/PhoneCallHelper;

    .line 112
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->stateReceiver:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 113
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 114
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$2;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$2;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnOutgoingCallInitiated()V

    return-void
.end method

.method static synthetic access$1100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->stateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Lcom/google/glass/phone/PhoneCallManagerServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->connection:Lcom/google/glass/phone/PhoneCallManagerServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Lcom/google/glass/entity/MatchEntity;)Lcom/google/glass/entity/MatchEntity;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
    .param p1, "x1"    # Lcom/google/glass/entity/MatchEntity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnCallerIdentified()V

    return-void
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->interactionOnGlass:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnCallConnecting()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnCallDisconnecting()V

    return-void
.end method

.method private cancelEntityMatcher()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling existing MatchEntity task."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/MatchEntity;->cancel(Z)Z

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

    .line 288
    :cond_0
    return-void
.end method

.method private createNewPhoneCall()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    new-instance v0, Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v0}, Lcom/google/glass/phone/PhoneCall;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 277
    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callState:I

    .line 278
    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callSetupState:I

    .line 279
    return-void
.end method

.method private dispatchOnCallConnected()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onCallConnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnCallConnecting()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onCallConnecting()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnCallDisconnected()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onCallDisconnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnCallDisconnecting()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onCallDisconnecting()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnCallError()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onCallError()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onCallError(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnCallerIdentified()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onCallerIdentified()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 393
    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 392
    invoke-interface {v0, v1, v2}, Lcom/google/glass/phone/IPhoneCallListener;->onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnIncomingCallInitiated()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onIncomingCallInitiated()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnOutgoingCallInitiated()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onOutgoingCallInitiated()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    invoke-interface {v0, v1}, Lcom/google/glass/phone/IPhoneCallListener;->onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private dispatchOnPhoneNumberSet()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dispatching onPhoneNumberSet()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->listener:Lcom/google/glass/phone/IPhoneCallListener;

    new-instance v1, Lcom/google/glass/phone/PhoneCall;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 380
    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-interface {v0, v1, v2}, Lcom/google/glass/phone/IPhoneCallListener;->onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private endCallStartNewOne()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/phone/PhoneCall;->setEndTime(J)V

    .line 263
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCall;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnCallError()V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->helper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0, v3}, Lcom/google/glass/phone/PhoneCallHelper;->setInCall(Z)V

    .line 269
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->cancelEntityMatcher()V

    .line 270
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->createNewPhoneCall()V

    .line 271
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->interactionOnGlass:Z

    .line 272
    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnCallDisconnected()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentCall()Lcom/google/glass/phone/PhoneCall;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/google/glass/phone/PhoneCall;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v0, v1}, Lcom/google/glass/phone/PhoneCall;-><init>(Lcom/google/glass/phone/PhoneCall;)V

    return-object v0
.end method

.method public onCallSetupStateChanged(I)V
    .locals 9
    .param p1, "callSetupState"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v7, :cond_1

    if-eq p1, v8, :cond_1

    .line 168
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown call setup state passed, taking no action: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-eqz p1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->helper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v1, v6}, Lcom/google/glass/phone/PhoneCallHelper;->setInCall(Z)V

    .line 177
    :cond_2
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callSetupState:I

    .line 178
    .local v0, "previousCallSetupState":I
    iput p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callSetupState:I

    .line 179
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Changing call setup state from %d to %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    if-ne p1, v6, :cond_3

    .line 182
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    sget-object v2, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneCall;->setCallDirection(Lcom/google/glass/phone/PhoneCall$CallDirection;)Z

    .line 183
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnIncomingCallInitiated()V

    goto :goto_0

    .line 184
    :cond_3
    if-eq p1, v7, :cond_4

    if-ne p1, v8, :cond_5

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    sget-object v2, Lcom/google/glass/phone/PhoneCall$CallDirection;->OUTGOING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneCall;->setCallDirection(Lcom/google/glass/phone/PhoneCall$CallDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnOutgoingCallInitiated()V

    goto :goto_0

    .line 190
    :cond_5
    if-nez p1, :cond_8

    if-eqz v0, :cond_8

    .line 192
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 193
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "The call did not connect..."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... since it was an incoming call, set as a missed call."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1, v6}, Lcom/google/glass/phone/PhoneCall;->setMissed(Z)V

    .line 200
    :goto_1
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->endCallStartNewOne()V

    goto :goto_0

    .line 198
    :cond_6
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... since it was an outgoing call, its considered completed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 202
    :cond_7
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Call setup has completed and the call has connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Call setup did not change."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onCallStateChanged(I)V
    .locals 7
    .param p1, "callState"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    if-eq p1, v5, :cond_0

    if-eqz p1, :cond_0

    .line 131
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown call state passed, taking no action: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->helper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v1, v5}, Lcom/google/glass/phone/PhoneCallHelper;->setInCall(Z)V

    .line 140
    :cond_1
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callState:I

    .line 141
    .local v0, "previousCallState":I
    iput p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callState:I

    .line 142
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Changing call state from %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    if-nez v0, :cond_2

    if-ne p1, v5, :cond_2

    .line 147
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1, v5}, Lcom/google/glass/phone/PhoneCall;->setCallAccepted(Z)V

    .line 148
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/phone/PhoneCall;->setStartTime(J)V

    .line 149
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnCallConnected()V

    goto :goto_0

    .line 150
    :cond_2
    if-ne v0, v5, :cond_3

    if-nez p1, :cond_3

    .line 153
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->endCallStartNewOne()V

    goto :goto_0

    .line 155
    :cond_3
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Call state did not change."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCallerIdChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0, p1}, Lcom/google/glass/phone/PhoneCall;->setPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting phone number and looking up the caller/callee\'s entity."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->dispatchOnPhoneNumberSet()V

    .line 216
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->cancelEntityMatcher()V

    .line 217
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Landroid/content/Context;)V

    .line 239
    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->addPhoneNumber(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

    .line 240
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->entityMatcherTask:Lcom/google/glass/entity/MatchEntity;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/MatchEntity;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Phone number was already set."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 429
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v0, p1}, Lcom/google/glass/phone/PhoneCall;->setError(I)V

    .line 253
    invoke-direct {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->endCallStartNewOne()V

    .line 254
    return-void
.end method

.method public onInBandRingChanged(Z)V
    .locals 2
    .param p1, "inBandRing"    # Z

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/phone/PhoneCall;->setLocalRingtone(Z)V

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAppContextForTest(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContextForTest"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 483
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    .line 484
    return-void
.end method

.method protected shouldHandleAudio()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 402
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Device is doffed, don\'t handle phone audio."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :goto_0
    return v0

    .line 406
    :cond_0
    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callState:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callSetupState:I

    if-nez v2, :cond_1

    .line 409
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not in a phone call, handle phone audio."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 410
    goto :goto_0

    .line 412
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->interactionOnGlass:Z

    if-eqz v2, :cond_2

    .line 414
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Phone call was dialed or answered on the device, handle phone audio."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 415
    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 418
    sget-object v2, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Call has been going for long enough, handle phone audio."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 419
    goto :goto_0

    .line 422
    :cond_3
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Don\'t handle phone call audio."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callState:I

    iget v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->callSetupState:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x52

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "PhoneCallManager [currentCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", callState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callSetupState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
