.class Lcom/google/glass/search/VoiceSearchResultsActivity$5;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/VoiceSearchResultsActivity;->insertAnswerCardSearchInTimeline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

.field final synthetic val$cardProcessor:Lcom/google/glass/search/results/AnswerCardProcessor;


# direct methods
.method constructor <init>(Lcom/google/glass/search/VoiceSearchResultsActivity;Lcom/google/glass/search/results/AnswerCardProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iput-object p2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->val$cardProcessor:Lcom/google/glass/search/results/AnswerCardProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 749
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->val$cardProcessor:Lcom/google/glass/search/results/AnswerCardProcessor;

    iget-object v9, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v9}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$500(Lcom/google/glass/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/glass/search/results/AnswerCardProcessor;->processTimelineHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    .local v7, "timelineResultHtml":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 755
    invoke-static {}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "No timeline result html for query [%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v11}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$600(Lcom/google/glass/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v8}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$800(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 760
    .local v6, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v8}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$900(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 764
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v8

    sget-object v9, Lcom/google/glass/util/FileType;->HTML:Lcom/google/glass/util/FileType;

    iget-object v10, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    .line 768
    invoke-static {v10}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$500(Lcom/google/glass/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v10

    .line 767
    invoke-virtual {v8, v9, v2, v10}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 769
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v8

    sget-object v9, Lcom/google/glass/util/FileType;->HTML:Lcom/google/glass/util/FileType;

    invoke-virtual {v8, v9, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "filePath":Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 773
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 774
    const-string v8, "application/glass+html"

    invoke-virtual {v0, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 775
    invoke-static {v6, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 779
    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 780
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 781
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 784
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 785
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 788
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v8, v6}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$1000(Lcom/google/glass/search/VoiceSearchResultsActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 791
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v8}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$600(Lcom/google/glass/search/VoiceSearchResultsActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 793
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v8}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$1100(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v8

    sget-object v9, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v9, v10}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 801
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iget-object v8, v8, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v8}, Lcom/google/glass/search/results/ResultsContainer;->getResultPageCount()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 802
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iget-object v8, v8, Lcom/google/glass/search/VoiceSearchResultsActivity;->results:Lcom/google/glass/search/results/ResultsContainer;

    invoke-virtual {v8, v4}, Lcom/google/glass/search/results/ResultsContainer;->getViewAt(I)Landroid/view/View;

    move-result-object v5

    .line 803
    .local v5, "initialSearchView":Landroid/view/View;
    instance-of v8, v5, Lcom/google/glass/search/results/WebAnswerCard;

    if-eqz v8, :cond_2

    .line 804
    check-cast v5, Lcom/google/glass/search/results/WebAnswerCard;

    .end local v5    # "initialSearchView":Landroid/view/View;
    invoke-interface {v5}, Lcom/google/glass/search/results/WebAnswerCard;->getMasterAnswerView()Lcom/google/glass/search/results/WebAnswerView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/glass/search/results/WebAnswerView;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 801
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 809
    :cond_3
    iget-object v8, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$5;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    new-instance v9, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v9, v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iput-object v9, v8, Lcom/google/glass/search/VoiceSearchResultsActivity;->lastSavedTimelineItemId:Lcom/google/glass/timeline/TimelineItemId;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 811
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Unable to encode answerCardResponse in UTF-8"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v1, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
