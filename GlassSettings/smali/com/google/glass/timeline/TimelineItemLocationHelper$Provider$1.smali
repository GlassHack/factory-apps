.class Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;
.super Ljava/lang/Object;
.source "TimelineItemLocationHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/timeline/TimelineItemLocationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->this$0:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 67
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 68
    .local v3, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 69
    .local v0, "clock":Lcom/google/glass/time/Clock;
    new-instance v2, Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v2, v1, v3, v0}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 71
    .local v2, "locationManagerHelper":Lcom/google/glass/location/LocationManagerHelper;
    new-instance v4, Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-direct {v4, v2}, Lcom/google/glass/timeline/TimelineItemLocationHelper;-><init>(Lcom/google/glass/location/LocationManagerHelper;)V

    return-object v4
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->get()Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    return-object v0
.end method
