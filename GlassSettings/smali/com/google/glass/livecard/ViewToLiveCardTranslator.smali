.class public Lcom/google/glass/livecard/ViewToLiveCardTranslator;
.super Ljava/lang/Object;
.source "ViewToLiveCardTranslator.java"

# interfaces
.implements Lcom/google/glass/livecard/InvalidateObserver;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final NO_NOTIFICATION:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final action:Landroid/app/PendingIntent;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final context:Landroid/content/Context;

.field private currentVisibility:I

.field private inLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private inRender:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final liveCard:Lcom/google/android/glass/timeline/LiveCard;

.field private notificationExtras:Landroid/os/Bundle;

.field private final notificationId:I

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/view/SurfaceHolder$Callback;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "liveCardId"    # Ljava/lang/String;
    .param p4, "notificationId"    # I
    .param p5, "additionalCallback"    # Landroid/view/SurfaceHolder$Callback;
    .param p6, "action"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->currentVisibility:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->inLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->inRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    instance-of v1, p2, Lcom/google/glass/livecard/InvalidateObservable;

    const-string v2, "View must be instance of "

    const-class v0, Lcom/google/glass/livecard/InvalidateObservable;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    invoke-static {v1, v0}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    .line 82
    iput-object p6, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->action:Landroid/app/PendingIntent;

    .line 83
    iput p4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationId:I

    .line 85
    new-instance v0, Lcom/google/android/glass/timeline/LiveCard;

    invoke-direct {v0, p1, p3}, Lcom/google/android/glass/timeline/LiveCard;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 86
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setDirectRenderingEnabled(Z)Lcom/google/android/glass/timeline/LiveCard;

    .line 87
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 88
    if-eqz p5, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p5}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0, p6}, Lcom/google/android/glass/timeline/LiveCard;->setAction(Landroid/app/PendingIntent;)Lcom/google/android/glass/timeline/LiveCard;

    .line 92
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "liveCardId"    # Ljava/lang/String;
    .param p4, "action"    # Landroid/app/PendingIntent;

    .prologue
    .line 60
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/view/SurfaceHolder$Callback;Landroid/app/PendingIntent;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->inLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->renderView()V

    return-void
.end method

.method private layoutView()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;

    invoke-direct {v1, p0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;-><init>(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private renderView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 179
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->inRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->currentVisibility:I

    if-nez v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    .line 191
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    .line 192
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$layout;->live_card_notification:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 194
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 195
    sget v3, Lcom/google/glass/common/R$id;->image:I

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 197
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    .line 198
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->action:Landroid/app/PendingIntent;

    .line 199
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationExtras:Landroid/os/Bundle;

    .line 200
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 201
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 204
    .local v1, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationId:I

    .line 205
    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 208
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v3}, Lcom/google/android/glass/timeline/LiveCard;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 209
    .local v0, "currentCanvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 210
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v3}, Lcom/google/android/glass/timeline/LiveCard;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->inRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    .end local v0    # "currentCanvas":Landroid/graphics/Canvas;
    :cond_2
    return-void

    .line 188
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->inRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3
.end method


# virtual methods
.method public getLiveCard()Lcom/google/android/glass/timeline/LiveCard;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->currentVisibility:I

    return v0
.end method

.method public onInvalidated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 241
    invoke-direct {p0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->layoutView()V

    .line 242
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNotificationExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 221
    iget v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 222
    iput-object p1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationExtras:Landroid/os/Bundle;

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->SILENT:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(ILcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    .line 108
    return-void
.end method

.method public setVisibility(ILcom/google/android/glass/timeline/LiveCard$PublishMode;)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "publishMode"    # Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    .prologue
    .line 116
    iget v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->currentVisibility:I

    if-ne v0, p1, :cond_1

    .line 117
    sget-object v0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Visibility already set.  Not changing. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iput p1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->currentVisibility:I

    .line 122
    if-nez p1, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->layoutView()V

    .line 124
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    check-cast v0, Lcom/google/glass/livecard/InvalidateObservable;

    invoke-interface {v0, p0}, Lcom/google/glass/livecard/InvalidateObservable;->registerInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V

    .line 125
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0, p2}, Lcom/google/android/glass/timeline/LiveCard;->publish(Lcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->view:Landroid/view/View;

    check-cast v0, Lcom/google/glass/livecard/InvalidateObservable;

    invoke-interface {v0, p0}, Lcom/google/glass/livecard/InvalidateObservable;->unregisterInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->unpublish()V

    .line 129
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->bitmap:Landroid/graphics/Bitmap;

    .line 134
    :cond_3
    iget v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 135
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public setVoiceActionEnabled(Z)V
    .locals 1
    .param p1, "isSet"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/timeline/LiveCard;->setVoiceActionEnabled(Z)Lcom/google/android/glass/timeline/LiveCard;

    .line 99
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->layoutView()V

    .line 236
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->layoutView()V

    .line 231
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 226
    return-void
.end method
