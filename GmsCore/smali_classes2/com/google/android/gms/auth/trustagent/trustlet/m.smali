.class public final Lcom/google/android/gms/auth/trustagent/trustlet/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/auth/trustagent/trustlet/n;

.field final c:Landroid/content/IntentFilter;

.field final d:Lcom/google/android/gms/auth/trustagent/trustlet/o;

.field e:Z

.field private final f:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/n;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->b:Lcom/google/android/gms/auth/trustagent/trustlet/n;

    .line 42
    iput-boolean v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->c:Landroid/content/IntentFilter;

    .line 44
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/o;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/o;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/m;B)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->d:Lcom/google/android/gms/auth/trustagent/trustlet/o;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->f:Landroid/location/LocationManager;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->f:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->f:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
