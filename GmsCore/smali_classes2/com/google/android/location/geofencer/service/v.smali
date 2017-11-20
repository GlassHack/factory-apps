.class final Lcom/google/android/location/geofencer/service/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method private constructor <init>(Lcom/google/android/location/geofencer/service/k;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/v;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/geofencer/service/k;B)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/location/geofencer/service/v;-><init>(Lcom/google/android/location/geofencer/service/k;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/v;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/k;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/v;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p2}, Lcom/google/android/location/geofencer/service/k;->b(Landroid/content/Intent;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/v;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->b(Lcom/google/android/location/geofencer/service/k;)V

    goto :goto_0

    .line 289
    :cond_3
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/v;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0, p2}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/k;Landroid/content/Intent;)V

    goto :goto_0

    .line 291
    :cond_4
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/v;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0, p2}, Lcom/google/android/location/geofencer/service/k;->b(Lcom/google/android/location/geofencer/service/k;Landroid/content/Intent;)V

    goto :goto_0
.end method
