.class Lcom/google/glass/voice/VoiceMessageController$8;
.super Lcom/google/glass/entity/MatchEntity;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;

.field final synthetic val$mosaicView:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/content/Context;Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$8;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iput-object p3, p0, Lcom/google/glass/voice/VoiceMessageController$8;->val$mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-direct {p0, p2}, Lcom/google/glass/entity/MatchEntity;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 6

    .prologue
    .line 724
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 725
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$8;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$1800(Lcom/google/glass/voice/VoiceMessageController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 729
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController$8;->val$mosaicView:Lcom/google/glass/mosaic/MosaicView;

    sget-object v4, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 730
    invoke-static {v1, v4, v5, v2}, Lcom/google/glass/mosaic/ImageLoaders;->forEntities(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v2

    .line 732
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v4, 0x0

    .line 730
    invoke-virtual {v3, v2, v1, v4}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Ljava/util/List;)V

    .line 733
    return-void
.end method

.method public onNoMatchFound()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method
