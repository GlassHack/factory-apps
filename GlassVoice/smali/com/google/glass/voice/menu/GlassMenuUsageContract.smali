.class public Lcom/google/glass/voice/menu/GlassMenuUsageContract;
.super Ljava/lang/Object;
.source "GlassMenuUsageContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;,
        Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.home.voice.menu"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final HOME_MENU_ITEMS_USAGE_TABLE:Ljava/lang/String; = "usage_stats"

.field public static final URI:Landroid/net/Uri;

.field public static final USAGE_COUNT_NOT_FOUND:I = -0x1

.field public static backgroundExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static contractInstance:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field final resolver:Landroid/content/ContentResolver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final sorter:Lcom/google/glass/voice/menu/GlassMenuSorter;

.field final usageStatsDataCache:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 45
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.home.voice.menu"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->BASE_URI:Landroid/net/Uri;

    .line 51
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->BASE_URI:Landroid/net/Uri;

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "usage_stats"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    .line 126
    new-instance v0, Lcom/google/glass/util/ThreadCheckThreadFactory;

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 128
    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/backgroundExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 135
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 136
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Lcom/google/glass/time/Clock;)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->resolver:Landroid/content/ContentResolver;

    .line 101
    const-string v0, "Content resolver cannot be null"

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    .line 103
    iput-object p2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->clock:Lcom/google/glass/time/Clock;

    .line 104
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuSorter;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuSorter;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->sorter:Lcom/google/glass/voice/menu/GlassMenuSorter;

    .line 105
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/GlassMenuUsageContract;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->updateUsageCountAndLastUsedTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/GlassMenuUsageContract;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->assertBackgroundThread()V

    return-void
.end method

.method private assertBackgroundThread()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 141
    return-void
.end method

.method private fromCursorToUsageStatsData(Landroid/database/Cursor;)Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 249
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    const-string v1, "command_literal"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "install_time"

    .line 250
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "last_used_time"

    .line 251
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v6, "usage_count"

    .line 252
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;-><init>(Ljava/lang/String;JJJ)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 108
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;Lcom/google/glass/time/Clock;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Landroid/content/ContentResolver;Lcom/google/glass/time/Clock;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "clock"    # Lcom/google/glass/time/Clock;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->contractInstance:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;-><init>(Landroid/content/ContentResolver;Lcom/google/glass/time/Clock;)V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->contractInstance:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    .line 116
    :cond_0
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->contractInstance:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    return-object v0
.end method

.method private getUsageCount(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "commandName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 149
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "usage_count"

    aput-object v0, v2, v1

    .line 150
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "command_literal=?"

    .line 151
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 152
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isPreviouslyKnownCommandName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "commandName"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .line 163
    .local v0, "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    iget-object v3, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v1, 0x1

    monitor-exit v2

    .line 167
    .end local v0    # "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setInstance(Lcom/google/glass/voice/menu/GlassMenuUsageContract;)V
    .locals 0
    .param p0, "instance"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 121
    sput-object p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->contractInstance:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    .line 122
    return-void
.end method

.method private updateUsageCountAndLastUsedTime(Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->assertBackgroundThread()V

    .line 196
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getUsageCount(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 199
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 201
    .local v11, "usageCount":I
    const-string v9, "command_literal=?"

    .line 202
    .local v9, "selection":Ljava/lang/String;
    new-array v10, v3, [Ljava/lang/String;

    aput-object p1, v10, v4

    .line 203
    .local v10, "selectionArgs":[Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "usage_count"

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v1, "last_used_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    const-wide/16 v2, 0x0

    const-string v1, "last_used_time"

    .line 209
    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v1, "usage_count"

    .line 210
    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;-><init>(Ljava/lang/String;JJJ)V

    .line 211
    .local v0, "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->updateUsageStatsCache(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)V

    .line 215
    .end local v0    # "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "usageCount":I
    .end local v12    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_0
    return-void

    .line 213
    :cond_1
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Command name %s not found in usage_stats db."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateUsageStatsCache(Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)V
    .locals 5
    .param p1, "inputData"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    .line 179
    .local v0, "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    iget-object v3, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-wide v3, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    iput-wide v3, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    .line 181
    iget-wide v3, p1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    iput-wide v3, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    .line 185
    .end local v0    # "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    :cond_1
    monitor-exit v2

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getMainMenuItemsData()Ljava/util/List;
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 258
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 259
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 260
    .local v7, "mainMenuItemsData":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;>;"
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "command_literal"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "install_time"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "last_used_time"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "usage_count"

    aput-object v1, v2, v0

    .line 262
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 263
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 265
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0, v6}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->fromCursorToUsageStatsData(Landroid/database/Cursor;)Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    :goto_1
    return-object v7

    .line 272
    :cond_1
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null cursor returned for main menu items query"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getSortedMainMenuItemsList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "The usage stats cache is empty. This should never happen."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    monitor-exit v2

    .line 311
    :goto_0
    return-object p1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->sorter:Lcom/google/glass/voice/menu/GlassMenuSorter;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->clock:Lcom/google/glass/time/Clock;

    .line 309
    invoke-virtual {v1, v3, v4}, Lcom/google/glass/voice/menu/GlassMenuSorter;->sortMainMenuItems(Ljava/util/List;Lcom/google/glass/time/Clock;)Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "sortedUsageStatsDataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;>;"
    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$VoiceMenuItemComparator;-><init>(Ljava/util/List;Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    monitor-exit v2

    goto :goto_0

    .line 312
    .end local v0    # "sortedUsageStatsDataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertOnlyIfPreviouslyUnknown(Ljava/lang/String;J)Z
    .locals 10
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "installTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    sget-object v4, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "commandName is empty"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :cond_0
    :goto_0
    return v1

    .line 363
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->isPreviouslyKnownCommandName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    move-wide v2, p2

    .line 365
    .local v2, "installTimeMillis":J
    invoke-static {p1}, Lcom/google/glass/voice/VoiceTriggerUtils;->isSystemCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    const-wide/16 v2, 0x0

    .line 372
    :cond_2
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    move-object v1, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;-><init>(Ljava/lang/String;JJJ)V

    .line 374
    .local v0, "data":Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    monitor-enter v4

    .line 375
    :try_start_0
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Adding %s to the usageStatsDataCache."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v9, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-interface {v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;

    invoke-direct {v4, p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;-><init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v1, v8

    .line 390
    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public loadMainMenuItemsUsageStatsCache()V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;-><init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public onTriggered(Lcom/google/glass/voice/menu/VoiceMenuItem;)Z
    .locals 6
    .param p1, "menuItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/CommandValue;->isTrigger()Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "The command name name was not set for %s!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :cond_2
    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onTriggered (key=%s)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->updateCommandNameIfPreviouslyKnown(Ljava/lang/String;)V

    move v0, v1

    .line 330
    goto :goto_0
.end method

.method updateCommandNameIfPreviouslyKnown(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 341
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;-><init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method
