.class public Lcom/google/glass/timeline/TimelineItemLocationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "null locationManagerHelper"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/LocationManagerHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2

    .prologue
    .line 37
    const-string v0, "null item"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/location/LocationHelper;->toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method
