.class public Lcom/google/glass/voice/menu/GlassMenuSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTERACTION_RECENCY_CUTOFF_MS:J

.field private static final MAX_RECENT_MAIN_MENU_ITEMS:I = 0x4

.field private static final RECENCY_COMPARATOR:Ljava/util/Comparator;

.field private static final SYSTEM_COMMANDS_COMPARATOR:Ljava/util/Comparator;

.field private static final USAGE_COUNT_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/menu/GlassMenuSorter;->INTERACTION_RECENCY_CUTOFF_MS:J

    .line 30
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuSorter$1;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuSorter$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuSorter;->USAGE_COUNT_COMPARATOR:Ljava/util/Comparator;

    .line 42
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuSorter$2;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuSorter$2;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuSorter;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuSorter$3;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuSorter$3;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuSorter;->SYSTEM_COMMANDS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuSorter;->USAGE_COUNT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method declared-synchronized getRecentMainMenuItems(Ljava/util/List;Lcom/google/glass/time/Clock;)Ljava/util/List;
    .locals 7

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    invoke-interface {p2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/google/glass/voice/menu/GlassMenuSorter;->INTERACTION_RECENCY_CUTOFF_MS:J

    sub-long v1, v0, v2

    .line 151
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .line 153
    iget-wide v5, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    cmp-long v5, v5, v1

    if-gtz v5, :cond_1

    iget-wide v5, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    .line 155
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuSorter;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getToBeSortedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 127
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .line 128
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    monitor-exit p0

    return-object v2

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sortMainMenuItems(Ljava/util/List;Lcom/google/glass/time/Clock;)Ljava/util/List;
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuSorter;->getRecentMainMenuItems(Ljava/util/List;Lcom/google/glass/time/Clock;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/menu/GlassMenuSorter;->getToBeSortedList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 109
    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuSorter;->SYSTEM_COMMANDS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuSorter;->USAGE_COUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-object v1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
