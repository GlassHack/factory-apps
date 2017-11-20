.class Lcom/google/glass/sync/SyncStats$StatsInfo;
.super Ljava/lang/Object;
.source "SyncStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/SyncStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsInfo"
.end annotation


# instance fields
.field private numFiles:J

.field private totalBytes:J

.field private totalDurationMs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/sync/SyncStats$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/sync/SyncStats$1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/glass/sync/SyncStats$StatsInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/sync/SyncStats$StatsInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sync/SyncStats$StatsInfo;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->numFiles:J

    return-wide v0
.end method

.method static synthetic access$108(Lcom/google/glass/sync/SyncStats$StatsInfo;)J
    .locals 4
    .param p0, "x0"    # Lcom/google/glass/sync/SyncStats$StatsInfo;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->numFiles:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->numFiles:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/SyncStats$StatsInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sync/SyncStats$StatsInfo;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/glass/sync/SyncStats$StatsInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/SyncStats$StatsInfo;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->totalBytes:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/glass/sync/SyncStats$StatsInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sync/SyncStats$StatsInfo;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->totalDurationMs:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/glass/sync/SyncStats$StatsInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/SyncStats$StatsInfo;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/google/glass/sync/SyncStats$StatsInfo;->totalDurationMs:J

    return-wide p1
.end method
