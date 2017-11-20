.class public final Lcom/google/android/location/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/location/clientlib/e;->b:Lcom/google/android/location/clientlib/e;

    invoke-static {v1}, Lcom/google/android/location/clientlib/c;->a(Lcom/google/android/location/clientlib/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iput-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    .line 35
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t request and remove activity detection updates at the same time. If you where tyring to update the rate of an existing activity detection, simply call requestActivityUpdates with the new rate (you don\'t need to call requestRemovalOfActivityUpdates)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_PERIOD_MILLIS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_LOCATION_TAG"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    return-object p0
.end method

.method public final a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_REMOVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/google/android/location/internal/h;->a()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_PERIOD_MILLIS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_FORCE_DETECTION_NOW"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_TAG"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_PERIOD_MILLIS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/google/android/location/internal/h;->a()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_REMOVE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    return-object p0
.end method

.method public final a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;
    .locals 2

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_LOCATION_WORK_SOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/location/internal/h;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_DEBUG_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    return-object p0
.end method

.method public final b(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_PENDING_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_LOCATION_REMOVE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/location/internal/h;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_LOCATION_FORCE_NOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/location/internal/h;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/location/internal/h;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.EXTRA_IS_FROM_FIRST_PARTY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    return-object p0
.end method
