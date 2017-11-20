.class Lcom/google/glass/voice/VoiceMessageController$9;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;

.field final synthetic val$mosaicView:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceMessageController$9;->val$mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 756
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceMessageController$9;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$2000(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMessageController;->access$1900(Lcom/google/glass/voice/VoiceMessageController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 764
    if-nez v0, :cond_0

    .line 765
    invoke-static {}, Lcom/google/glass/voice/VoiceMessageController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No item found for %s, cannot get mosaic image URLs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v4}, Lcom/google/glass/voice/VoiceMessageController;->access$1900(Lcom/google/glass/voice/VoiceMessageController;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 772
    :goto_0
    return-object v0

    .line 770
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceMessageController;->access$1800(Lcom/google/glass/voice/VoiceMessageController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    .line 771
    invoke-static {v3}, Lcom/google/glass/voice/VoiceMessageController;->access$1800(Lcom/google/glass/voice/VoiceMessageController;)Landroid/content/Context;

    move-result-object v3

    .line 770
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 772
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceMessageController;->access$1800(Lcom/google/glass/voice/VoiceMessageController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceMessageController;->access$2100(Lcom/google/glass/voice/VoiceMessageController;)Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/google/glass/voice/VoiceMessageController;->collectReplyMosaicImageUrls(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 756
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceMessageController$9;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$9;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController$9;->val$mosaicView:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v0, v1, p1}, Lcom/google/glass/voice/VoiceMessageController;->access$2200(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/mosaic/MosaicView;Ljava/util/List;)V

    .line 778
    return-void
.end method
