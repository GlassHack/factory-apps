.class Lcom/google/glass/location/LocationManagerHelper$Provider$1;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationManagerHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/location/LocationManagerHelper;
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
        "Lcom/google/glass/location/LocationManagerHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationManagerHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationManagerHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/location/LocationManagerHelper$Provider;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/glass/location/LocationManagerHelper$Provider$1;->this$0:Lcom/google/glass/location/LocationManagerHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/location/LocationManagerHelper;
    .locals 5

    .prologue
    .line 488
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationManagerHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 489
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationManagerHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    .line 490
    .local v2, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 491
    .local v0, "clock":Lcom/google/glass/time/Clock;
    new-instance v3, Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/glass/location/LocationManagerHelper$Provider$1;->get()Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v0

    return-object v0
.end method
