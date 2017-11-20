.class public final Lcom/google/android/gms/auth/trustagent/trustlet/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/auth/trustagent/trustlet/s;

.field final c:Lcom/google/android/gms/common/api/j;

.field final d:Landroid/content/IntentFilter;

.field final e:Lcom/google/android/gms/auth/trustagent/trustlet/t;

.field f:I

.field g:Lcom/google/android/gms/common/api/l;

.field h:Lcom/google/android/gms/common/api/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/s;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/places/s;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/s;Lcom/google/android/gms/common/api/j;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/s;Lcom/google/android/gms/common/api/j;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->b:Lcom/google/android/gms/auth/trustagent/trustlet/s;

    .line 81
    iput-object p3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.auth.trustagent.trustlet.ACTION_PERSONAL_NEARBY_ALERT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->d:Landroid/content/IntentFilter;

    .line 83
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/t;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;B)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->e:Lcom/google/android/gms/auth/trustagent/trustlet/t;

    .line 84
    return-void
.end method


# virtual methods
.method final a()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.trustagent.trustlet.ACTION_PERSONAL_NEARBY_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->f:I

    .line 124
    const-string v1, "INTENT_CODE_ID"

    iget v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 103
    array-length v0, p1

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->a()Lcom/google/android/gms/location/places/i;

    move-result-object v2

    iput-object p1, v2, Lcom/google/android/gms/location/places/i;->c:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/location/places/i;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->a(ILcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/location/places/NearbyAlertRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/w;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/y;

    .line 109
    const-string v0, "Coffee - NearbyAlertTracker"

    const-string v1, "requestNearbyAlerts()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
