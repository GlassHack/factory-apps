.class public final Lcom/google/android/location/fused/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/fused/c;

.field public b:Landroid/location/Location;

.field c:Landroid/location/Location;

.field d:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/c;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide v0, -0x8bb2c97000L

    iput-wide v0, p0, Lcom/google/android/location/fused/ao;->d:J

    .line 26
    iput-object p1, p0, Lcom/google/android/location/fused/ao;->a:Lcom/google/android/location/fused/c;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/ao;->c:Landroid/location/Location;

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    .line 36
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "noGPSLocation"

    invoke-static {p1, v0}, Lcom/google/android/location/o/w;->b(Landroid/location/Location;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/ao;->a:Lcom/google/android/location/fused/c;

    invoke-static {p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/google/android/location/fused/ao;->d:J

    sub-long v2, v0, v2

    .line 40
    const-wide v4, 0x8bb2c97000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 41
    iput-object p1, p0, Lcom/google/android/location/fused/ao;->c:Landroid/location/Location;

    .line 42
    iput-wide v0, p0, Lcom/google/android/location/fused/ao;->d:J

    .line 45
    :cond_1
    return-void
.end method
