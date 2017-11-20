.class Lcom/google/glass/boutique/GlasswareCardHelper$2;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "GlasswareCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/GlasswareCardHelper;->updateGlasswareCard(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

.field final synthetic val$cardType:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

.field final synthetic val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

.field final synthetic val$rerenderOnly:Z

.field final synthetic val$timelineItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$timelineItemId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$rerenderOnly:Z

    iput-object p4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iput-object p5, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$cardType:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 157
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v2}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$timelineItemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 158
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v1

    .line 162
    :cond_1
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 165
    iget-boolean v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$rerenderOnly:Z

    if-nez v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v2}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$400(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 169
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$cardType:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/boutique/GlasswareCardHelper;->buildSourceItemId(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 171
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$500()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$cardType:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 173
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setExpirationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v2}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$600(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->val$cardType:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)V

    .line 178
    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$2;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v2}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_0
.end method
