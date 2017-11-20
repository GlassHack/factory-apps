.class public final Lcom/google/android/location/geofencer/service/h;
.super Lcom/google/android/location/o/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "geofencer_ks"

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/o/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "GeofencerSecrectKey"

    invoke-static {v0, p1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method
