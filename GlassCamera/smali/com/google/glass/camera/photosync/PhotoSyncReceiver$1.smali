.class Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;
.super Ljava/lang/Object;
.source "PhotoSyncReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iput-object p2, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 82
    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=\""

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->val$itemId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "count":I
    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    invoke-static {v3}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$000(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->supportPhotoSyncDeletion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 87
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    new-instance v2, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    .line 88
    .local v2, "photo":Lcom/google/glass/companion/Proto$Photo;
    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->val$itemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/glass/util/HashFunctions;->toMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Photo;->setPhotoId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Photo;

    .line 89
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Photo;->setOp(I)Lcom/google/glass/companion/Proto$Photo;

    .line 90
    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    invoke-static {v3}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$000(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->supportNumOfPhotosToSync()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    iget-object v4, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$100(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Photo;->setNumOfPhotosToSync(I)Lcom/google/glass/companion/Proto$Photo;

    .line 93
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$Envelope;->setPhotoG2C(Lcom/google/glass/companion/Proto$Photo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 94
    iget-object v3, p0, Lcom/google/glass/camera/photosync/PhotoSyncReceiver$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncReceiver;

    invoke-static {v3}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$000(Lcom/google/glass/camera/photosync/PhotoSyncReceiver;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 96
    .end local v1    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v2    # "photo":Lcom/google/glass/companion/Proto$Photo;
    :cond_1
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncReceiver;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "deleted %d item"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method
