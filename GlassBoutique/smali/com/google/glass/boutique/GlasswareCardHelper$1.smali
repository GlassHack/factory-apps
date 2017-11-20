.class Lcom/google/glass/boutique/GlasswareCardHelper$1;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/GlasswareCardHelper;->insertGlasswareCard(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/GlasswareCardHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 134
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->GLASSWARE_INSTALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$200(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineNotificationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v1}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$100(Lcom/google/glass/boutique/GlasswareCardHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 137
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Inserted timeline item %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method
