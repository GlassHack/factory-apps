.class public Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final actions:Ljava/util/List;

.field public final maxRowId:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    .line 101
    iput-wide p2, p0, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->maxRowId:J

    .line 102
    return-void
.end method
