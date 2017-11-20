.class public final Lcom/google/glass/logging/EngFeedbackService;
.super Landroid/app/Service;
.source "EngFeedbackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/EngFeedbackService$1;,
        Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;,
        Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;
    }
.end annotation


# static fields
.field private static final MAX_CLEAN_ITEM_COUNT:I = 0x14

.field private static final MESSAGE_ID:I = 0x1

.field private static final NOTIFICATION_ID:I = 0x1

.field private static logger:Lcom/google/glass/logging/FormattingLogger;

.field private static messageLatch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private notification:Landroid/app/Notification;

.field private serviceHandler:Landroid/os/Handler;

.field private serviceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/EngFeedbackService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 203
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/logging/EngFeedbackService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static getMessageLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/google/glass/logging/EngFeedbackService;->messageLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static setMessageLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "messageLatch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 111
    sput-object p0, Lcom/google/glass/logging/EngFeedbackService;->messageLatch:Ljava/util/concurrent/CountDownLatch;

    .line 112
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$string;->capturing_bugreport:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/logging/R$drawable;->ic_bug_30:I

    .line 66
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/logging/EngFeedbackService;->notification:Landroid/app/Notification;

    .line 71
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/logging/EngFeedbackService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/logging/EngFeedbackService;->startForeground(ILandroid/app/Notification;)V

    .line 75
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/google/glass/logging/EngFeedbackService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/logging/EngFeedbackService;->serviceLooper:Landroid/os/Looper;

    .line 78
    new-instance v1, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;

    iget-object v2, p0, Lcom/google/glass/logging/EngFeedbackService;->serviceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/logging/EngFeedbackService$FeedbackIntentHandler;-><init>(Lcom/google/glass/logging/EngFeedbackService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/logging/EngFeedbackService;->serviceHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackService;->serviceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 96
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 83
    new-instance v1, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;-><init>(Lcom/google/glass/logging/EngFeedbackService$1;)V

    .line 84
    .local v1, "request":Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;
    iput-object p1, v1, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;->intent:Landroid/content/Intent;

    .line 85
    iput p3, v1, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;->startId:I

    .line 86
    iget-object v2, p0, Lcom/google/glass/logging/EngFeedbackService;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/google/glass/logging/EngFeedbackService;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return v3
.end method
