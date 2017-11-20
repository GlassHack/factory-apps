.class public Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
.super Ljava/lang/Object;
.source "TimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPendingActionsResponse"
.end annotation


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;",
            ">;"
        }
    .end annotation
.end field

.field public final maxRowId:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .param p2, "maxRowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    .line 101
    iput-wide p2, p0, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->maxRowId:J

    .line 102
    return-void
.end method
