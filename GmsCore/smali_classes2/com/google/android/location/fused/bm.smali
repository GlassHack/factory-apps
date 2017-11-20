.class public final Lcom/google/android/location/fused/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/fused/bo;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/bm;->b:Landroid/content/ContentResolver;

    .line 51
    new-instance v0, Lcom/google/android/location/fused/bn;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/fused/bn;-><init>(Lcom/google/android/location/fused/bm;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/fused/bm;->c:Landroid/database/ContentObserver;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/location/fused/bm;->b:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/fused/bm;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/location/fused/bm;->c()V

    .line 75
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/location/fused/bm;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/location/fused/bm;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method final c()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 85
    iget-object v1, p0, Lcom/google/android/location/fused/bm;->a:Lcom/google/android/location/fused/bo;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/android/location/fused/bm;->a:Lcom/google/android/location/fused/bo;

    iget-object v2, p0, Lcom/google/android/location/fused/bm;->b:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/fused/bm;->b:Landroid/content/ContentResolver;

    const-string v4, "network"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/location/fused/bm;->b:Landroid/content/ContentResolver;

    const-string v4, "network_location_opt_in"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/location/fused/bo;->a(ZZ)V

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
