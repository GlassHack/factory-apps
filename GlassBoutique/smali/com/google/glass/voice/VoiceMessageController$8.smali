.class Lcom/google/glass/voice/VoiceMessageController$8;
.super Lcom/google/glass/entity/MatchEntity;
.source "VoiceMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMessageController;->createMatchEntityTask(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/entity/MatchEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;

.field final synthetic val$mosaicView:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/content/Context;Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMessageController;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$8;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceMessageController$8;->val$mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-direct {p0, p2}, Lcom/google/glass/entity/MatchEntity;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 7
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 724
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 725
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController$8;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceMessageController;->access$1800(Lcom/google/glass/voice/VoiceMessageController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 729
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceMessageController$8;->val$mosaicView:Lcom/google/glass/mosaic/MosaicView;

    sget-object v3, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 730
    invoke-static {v0, v3, v5, v6}, Lcom/google/glass/mosaic/ImageLoaders;->forEntities(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v5

    .line 732
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v6, 0x0

    .line 730
    invoke-virtual {v4, v5, v3, v6}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    .line 729
    invoke-virtual {v2, v3}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Ljava/util/List;)V

    .line 733
    return-void
.end method

.method public onNoMatchFound()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method
