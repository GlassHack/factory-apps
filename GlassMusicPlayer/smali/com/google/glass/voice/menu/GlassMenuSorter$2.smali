.class final Lcom/google/glass/voice/menu/GlassMenuSorter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I
    .locals 6

    .prologue
    .line 48
    iget-wide v0, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    iget-wide v2, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 49
    iget-wide v2, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    iget-wide v4, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 51
    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/Longs;->a(JJ)I

    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuSorter;->access$000()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 56
    :cond_0
    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    check-cast p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuSorter$2;->compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I

    move-result v0

    return v0
.end method
