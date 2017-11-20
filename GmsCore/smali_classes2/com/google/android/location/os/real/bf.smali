.class public final Lcom/google/android/location/os/real/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/location/os/real/bf;->a:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/google/android/location/os/real/bf;->a:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public static a(Landroid/hardware/SensorManager;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/hardware/SensorManager;Landroid/location/LocationManager;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 35
    :cond_0
    sget-object v0, Lcom/google/android/location/os/real/bf;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    move v0, v1

    .line 38
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p1}, Lcom/google/android/location/os/real/bf;->a(Landroid/location/LocationManager;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/location/LocationManager;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 60
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
