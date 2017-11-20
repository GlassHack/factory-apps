.class final Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;
.super Ljava/lang/RuntimeException;
.source "GlasswareSyncAdapter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/GlasswareSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GlasswareSyncException"
.end annotation


# instance fields
.field private hardFailure:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p1, "hardFailure"    # Z
    .param p2, "src"    # Ljava/lang/Throwable;

    .prologue
    .line 596
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 597
    iput-boolean p1, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;->hardFailure:Z

    .line 598
    return-void
.end method


# virtual methods
.method public updateStats(Landroid/content/SyncResult;)V
    .locals 5
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/google/glass/boutique/GlasswareSyncAdapter$GlasswareSyncException;->hardFailure:Z

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0
.end method
