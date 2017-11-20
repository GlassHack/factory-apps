.class final Lcom/google/glass/voice/menu/GlassMenuSorter$2;
.super Ljava/lang/Object;
.source "GlassMenuSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/GlassMenuSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I
    .locals 9
    .param p1, "lhs"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    .param p2, "rhs"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .prologue
    .line 48
    iget-wide v5, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    iget-wide v7, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 49
    .local v1, "timeLhs":J
    iget-wide v5, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    iget-wide v7, p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 51
    .local v3, "timeRhs":J
    invoke-static {v3, v4, v1, v2}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    .line 53
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuSorter;->access$000()Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 56
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    check-cast p2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuSorter$2;->compare(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)I

    move-result v0

    return v0
.end method
