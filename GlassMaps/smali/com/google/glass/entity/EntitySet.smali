.class public abstract enum Lcom/google/glass/entity/EntitySet;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/entity/EntitySet;

.field public static final enum MESSAGING_CONTACTS:Lcom/google/glass/entity/EntitySet;

.field public static final enum PHONE_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

.field public static final enum SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

.field public static final enum SHARE_TARGETS:Lcom/google/glass/entity/EntitySet;

.field public static final enum VIDEO_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cachedSet:Lcom/google/glass/entity/EntityList;

.field private cachedSetTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private cachedSetVersion:J

.field final changesWithTimelineItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/google/glass/entity/EntitySet$1;

    const-string v1, "MESSAGING_CONTACTS"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/glass/entity/EntitySet$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/entity/EntitySet;->MESSAGING_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 20
    new-instance v0, Lcom/google/glass/entity/EntitySet$2;

    const-string v1, "PHONE_CALL_CONTACTS"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/entity/EntitySet$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/entity/EntitySet;->PHONE_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 26
    new-instance v0, Lcom/google/glass/entity/EntitySet$3;

    const-string v1, "VIDEO_CALL_CONTACTS"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/entity/EntitySet$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/entity/EntitySet;->VIDEO_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 32
    new-instance v0, Lcom/google/glass/entity/EntitySet$4;

    const-string v1, "SHARE_TARGETS"

    invoke-direct {v0, v1, v5, v3}, Lcom/google/glass/entity/EntitySet$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/entity/EntitySet;->SHARE_TARGETS:Lcom/google/glass/entity/EntitySet;

    .line 38
    new-instance v0, Lcom/google/glass/entity/EntitySet$5;

    const-string v1, "SEND_TARGETS"

    invoke-direct {v0, v1, v6, v3}, Lcom/google/glass/entity/EntitySet$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/entity/EntitySet;

    sget-object v1, Lcom/google/glass/entity/EntitySet;->MESSAGING_CONTACTS:Lcom/google/glass/entity/EntitySet;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/entity/EntitySet;->PHONE_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/entity/EntitySet;->VIDEO_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/entity/EntitySet;->SHARE_TARGETS:Lcom/google/glass/entity/EntitySet;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/entity/EntitySet;->$VALUES:[Lcom/google/glass/entity/EntitySet;

    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntitySet;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/entity/EntitySet;->cachedSetVersion:J

    .line 51
    iput-boolean p3, p0, Lcom/google/glass/entity/EntitySet;->changesWithTimelineItem:Z

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/google/glass/entity/EntitySet$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/entity/EntitySet;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/entity/EntitySet;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/entity/EntitySet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntitySet;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/entity/EntitySet;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/glass/entity/EntitySet;->$VALUES:[Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v0}, [Lcom/google/glass/entity/EntitySet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/entity/EntitySet;

    return-object v0
.end method


# virtual methods
.method protected abstract calculateEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;
.end method

.method public getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v1

    .line 69
    monitor-enter v1

    .line 70
    :try_start_0
    invoke-virtual {v1}, Lcom/google/glass/entity/EntityCache;->getVersion()J

    move-result-wide v2

    .line 71
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 74
    iget-wide v4, p0, Lcom/google/glass/entity/EntitySet;->cachedSetVersion:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/google/glass/entity/EntitySet;->changesWithTimelineItem:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/entity/EntitySet;->cachedSetTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 75
    invoke-static {v4, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntitySet;->calculateEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/entity/EntitySet;->cachedSet:Lcom/google/glass/entity/EntityList;

    .line 80
    iput-wide v2, p0, Lcom/google/glass/entity/EntitySet;->cachedSetVersion:J

    .line 81
    iput-object v0, p0, Lcom/google/glass/entity/EntitySet;->cachedSetTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 83
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance v0, Lcom/google/glass/entity/EntityList;

    iget-object v1, p0, Lcom/google/glass/entity/EntitySet;->cachedSet:Lcom/google/glass/entity/EntityList;

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/entity/EntitySet;->cachedSet:Lcom/google/glass/entity/EntityList;

    .line 88
    invoke-virtual {v2}, Lcom/google/glass/entity/EntityList;->getNumRecentContacts()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/EntityList;-><init>(Ljava/util/List;I)V

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
