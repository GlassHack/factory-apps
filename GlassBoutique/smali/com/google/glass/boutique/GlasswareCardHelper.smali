.class public Lcom/google/glass/boutique/GlasswareCardHelper;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/GlasswareCardHelper$6;,
        Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;
    }
.end annotation


# static fields
.field public static final ACTIVE_TEXT_OPACITY:Ljava/lang/String; = "1.0"

.field static final DEFAULT_BRAND_COLOR:Ljava/lang/String; = "#222222"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INACTIVE_TEXT_OPACITY:Ljava/lang/String; = "0.5"

.field private static final MUTED_BRAND_COLOR_BRIGHTNESS:F = 0.4f

.field private static final PACKAGE_NAME_OVERRIDE_RULES:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PENDING_CARD_TYPES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/glass/boutique/BoutiqueUtils$CardType;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVE_CARD_MAX_RETRIES:I = 0x5

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cardRenderer:Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final context:Landroid/content/Context;

.field private removeCardRetryTimeMs:I

.field private final serialExecutor:Ljava/util/concurrent/Executor;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private final timelineNotificationHelper:Lcom/google/glass/timeline/TimelineNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 56
    sget-object v0, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_PENDING:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .line 57
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/GlasswareCardHelper;->PENDING_CARD_TYPES:Lcom/google/common/collect/ImmutableSet;

    .line 66
    const-string v0, "com.google.android.music"

    const-string v1, "com.google.glass.musicplayer"

    .line 67
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/GlasswareCardHelper;->PACKAGE_NAME_OVERRIDE_RULES:Lcom/google/common/collect/ImmutableMap;

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;
    .param p3, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p4, "timelineItemCreationHelper"    # Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .param p5, "timelineItemLocationHelper"    # Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .param p6, "timelineNotificationHelper"    # Lcom/google/glass/timeline/TimelineNotificationHelper;
    .param p7, "serialExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->removeCardRetryTimeMs:I

    .line 89
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->clock:Lcom/google/glass/time/Clock;

    .line 91
    iput-object p3, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 92
    iput-object p4, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 93
    iput-object p5, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 94
    iput-object p6, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineNotificationHelper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    .line 95
    iput-object p7, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->serialExecutor:Ljava/util/concurrent/Executor;

    .line 96
    new-instance v0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;

    invoke-direct {v0, p1}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->cardRenderer:Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;

    .line 98
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/boutique/GlasswareCardHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/glass/boutique/GlasswareCardHelper;->removeGlasswareCard(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/boutique/GlasswareCardHelper;->PACKAGE_NAME_OVERRIDE_RULES:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineNotificationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineNotificationHelper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/time/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->clock:Lcom/google/glass/time/Clock;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/boutique/GlasswareCardHelper;->PENDING_CARD_TYPES:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->cardRenderer:Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseSerializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/GlasswareCardHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/GlasswareCardHelper;->runDeleteTimelineItem(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getRemoveCardRetryTimeMs()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->removeCardRetryTimeMs:I

    return v0
.end method

.method private removeGlasswareCard(Ljava/lang/String;I)V
    .locals 10
    .param p1, "timelineItemId"    # Ljava/lang/String;
    .param p2, "retryAttempt"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    sget-object v2, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Removing timeline item [timelineItemId=%s, retryAttempt=%s]."

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 248
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    if-le p2, v9, :cond_0

    .line 252
    sget-object v2, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Maximum retries reached for removing timeline item [timelineItemId=%s, retryAttempt=%s, maxRetries=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 252
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 262
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/google/glass/boutique/GlasswareCardHelper;->getRemoveCardRetryTimeMs()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int v1, v2, v3

    .line 264
    .local v1, "sleepTimeMs":I
    new-instance v2, Lcom/google/glass/boutique/GlasswareCardHelper$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/boutique/GlasswareCardHelper$5;-><init>(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;I)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private runDeleteTimelineItem(Ljava/lang/String;)Z
    .locals 8
    .param p1, "timelineItemId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 284
    sget-object v4, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Attempting to delete timeline item [timelineItemId=%s]."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v4, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 287
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v4, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 290
    sget-object v4, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Successfully deleted timeline item [timelineItemId=%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Interrupted during deletion of timeline item [itemId=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    .line 296
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 294
    invoke-interface {v4, v0, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    move v2, v3

    .line 303
    goto :goto_0

    .line 299
    :cond_0
    sget-object v4, Lcom/google/glass/boutique/GlasswareCardHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Timeline item not present or already expired [timelineItemId=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method buildSourceItemId(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;
    .locals 6
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p2, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 337
    const-string v0, ""

    .line 339
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/google/glass/boutique/GlasswareCardHelper;->PACKAGE_NAME_OVERRIDE_RULES:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Lcom/google/glass/boutique/GlasswareCardHelper;->PACKAGE_NAME_OVERRIDE_RULES:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "packageName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 347
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v1, "%s%s:%s:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "boutique:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 348
    invoke-virtual {p2}, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    .line 349
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 347
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public cleanupOldGlasswareCards()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->serialExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/boutique/GlasswareCardHelper$4;

    invoke-direct {v1, p0}, Lcom/google/glass/boutique/GlasswareCardHelper$4;-><init>(Lcom/google/glass/boutique/GlasswareCardHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public getTimelineItemId(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;
    .locals 6
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p2, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .prologue
    .line 321
    const-string v3, "device:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v4}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "source":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/boutique/GlasswareCardHelper;->buildSourceItemId(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "sourceItemId":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 325
    invoke-virtual {v3, v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 326
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 321
    .end local v0    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "sourceItemId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .restart local v0    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v1    # "source":Ljava/lang/String;
    .restart local v2    # "sourceItemId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public insertGlasswareCard(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;
    .locals 5
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p2, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 108
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 111
    sget-object v1, Lcom/google/glass/boutique/GlasswareCardHelper;->PENDING_CARD_TYPES:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 119
    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setExpirationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/boutique/GlasswareCardHelper;->buildSourceItemId(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 128
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 130
    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->cardRenderer:Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)V

    .line 132
    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->serialExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/boutique/GlasswareCardHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/boutique/GlasswareCardHelper$1;-><init>(Lcom/google/glass/boutique/GlasswareCardHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeGlasswareCard(Ljava/lang/String;)V
    .locals 1
    .param p1, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/boutique/GlasswareCardHelper;->removeGlasswareCard(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method setRemoveCardRetryTimeMs(I)V
    .locals 0
    .param p1, "removeCardRetryTimeMs"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 312
    iput p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->removeCardRetryTimeMs:I

    .line 313
    return-void
.end method

.method public updateGlasswareCard(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;Z)V
    .locals 6
    .param p1, "timelineItemId"    # Ljava/lang/String;
    .param p2, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p3, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;
    .param p4, "rerenderOnly"    # Z

    .prologue
    .line 155
    new-instance v0, Lcom/google/glass/boutique/GlasswareCardHelper$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/boutique/GlasswareCardHelper$2;-><init>(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)V

    .line 183
    .local v0, "update":Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
    iget-object v1, p0, Lcom/google/glass/boutique/GlasswareCardHelper;->serialExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/glass/boutique/GlasswareCardHelper$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/glass/boutique/GlasswareCardHelper$3;-><init>(Lcom/google/glass/boutique/GlasswareCardHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
