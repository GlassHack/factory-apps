.class public final Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FreshLocationPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final staleLocationMillis:J


# direct methods
.method public constructor <init>(JLcom/google/glass/time/Clock;)V
    .locals 1
    .param p1, "staleLocationMillis"    # J
    .param p3, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-wide p1, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->staleLocationMillis:J

    .line 450
    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->clock:Lcom/google/glass/time/Clock;

    .line 451
    return-void
.end method


# virtual methods
.method public apply(Landroid/location/Location;)Z
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 455
    if-nez p1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->staleLocationMillis:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 444
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;->apply(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method
