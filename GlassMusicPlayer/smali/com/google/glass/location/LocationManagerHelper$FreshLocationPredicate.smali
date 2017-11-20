.class public final Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final staleLocationMillis:J


# direct methods
.method public constructor <init>(JLcom/google/glass/time/Clock;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-wide p1, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->staleLocationMillis:J

    .line 452
    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->clock:Lcom/google/glass/time/Clock;

    .line 453
    return-void
.end method


# virtual methods
.method public final apply(Landroid/location/Location;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 457
    if-nez p1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->staleLocationMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 446
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->apply(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method
