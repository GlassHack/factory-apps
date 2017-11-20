.class Lcom/google/glass/boutique/GlasswareCardHelper$3;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

.field final synthetic val$update:Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/GlasswareCardHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$3;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$3;->val$update:Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;

    iput-object p3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$3;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper$3;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$3;->val$update:Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;)V

    .line 187
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Updated timeline item %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$3;->val$glassware:Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    return-void
.end method
