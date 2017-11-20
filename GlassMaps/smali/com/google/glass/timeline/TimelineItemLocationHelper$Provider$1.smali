.class Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->this$0:Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 71
    new-instance v0, Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-direct {v0, v3}, Lcom/google/glass/timeline/TimelineItemLocationHelper;-><init>(Lcom/google/glass/location/LocationManagerHelper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider$1;->get()Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    return-object v0
.end method
