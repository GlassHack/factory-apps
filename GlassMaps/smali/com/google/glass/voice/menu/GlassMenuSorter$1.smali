.class final Lcom/google/glass/voice/menu/GlassMenuSorter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I
    .locals 4

    .prologue
    .line 34
    iget-wide v0, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    iget-wide v2, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    iget-wide v2, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    check-cast p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuSorter$1;->compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I

    move-result v0

    return v0
.end method
