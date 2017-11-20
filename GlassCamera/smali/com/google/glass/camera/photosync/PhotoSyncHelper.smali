.class public Lcom/google/glass/camera/photosync/PhotoSyncHelper;
.super Ljava/lang/Object;
.source "PhotoSyncHelper.java"


# static fields
.field public static final FORWARDED_PHOTO_HEIGHT:I = 0x3a0

.field public static final FORWARDED_PHOTO_WIDTH:I = 0x4f0

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V
    .locals 7
    .param p0, "remoteCompanionProxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p1, "remainingCount"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->supportNumOfPhotosToSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    sget-object v2, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Notifying %s pending photo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 42
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    new-instance v1, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    .line 43
    .local v1, "photo":Lcom/google/glass/companion/Proto$Photo;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$Photo;->setOp(I)Lcom/google/glass/companion/Proto$Photo;

    .line 44
    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$Photo;->setNumOfPhotosToSync(I)Lcom/google/glass/companion/Proto$Photo;

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setPhotoG2C(Lcom/google/glass/companion/Proto$Photo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 48
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v1    # "photo":Lcom/google/glass/companion/Proto$Photo;
    :cond_0
    return-void
.end method

.method public static validateAndEnqueueItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p1, "isPending"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 62
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->getInstance()Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/photosync/PhotoSyncExecutorProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/camera/photosync/PhotoSyncHelper$1;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method
