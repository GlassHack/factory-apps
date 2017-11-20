.class Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;
.super Ljava/lang/Object;
.source "PhotoSyncReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->cleanupExpiredPhotoItems(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$expirePeriodMS:J


# direct methods
.method constructor <init>(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;JLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iput-wide p2, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->val$expirePeriodMS:J

    iput-object p4, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 113
    .local v1, "currentTime":J
    iget-wide v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->val$expirePeriodMS:J

    sub-long v3, v1, v5

    .line 114
    .local v3, "expireTime":J
    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "timestamp < "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "count":I
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "deleted %d expired photo sync items (< %d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v5, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    .line 120
    invoke-static {v5}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$000(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iget-object v7, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$100(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;)I

    move-result v6

    .line 119
    invoke-static {v5, v6}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->sendNumOfPhotoNoticeIfSupported(Lcom/google/glass/companion/RemoteCompanionProxy;I)V

    .line 122
    :cond_0
    return-void
.end method
