.class public final Lcom/google/android/location/fused/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/o/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/location/o/s;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/o/s;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/fused/aw;->a:Lcom/google/android/location/o/s;

    .line 23
    return-void
.end method

.method public static a(Landroid/location/Location;Z)Landroid/location/Location;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/w;->d(Landroid/location/Location;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/google/android/location/o/w;->b(Landroid/location/Location;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/Integer;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-static {v0}, Lcom/google/android/location/o/w;->f(Landroid/location/Location;)V

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;ZZ)Landroid/location/Location;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_1

    move-object p1, v0

    .line 70
    :cond_0
    :goto_0
    return-object p1

    .line 46
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    .line 51
    :cond_2
    invoke-static {p1}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;)Z

    move-result v1

    .line 52
    if-nez p3, :cond_3

    if-eqz v1, :cond_4

    .line 55
    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/location/fused/aw;->a(Landroid/location/Location;Z)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_4
    const-string v2, "noGPSLocation"

    invoke-static {p1, v2}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    iget-object v0, p0, Lcom/google/android/location/fused/aw;->a:Lcom/google/android/location/o/s;

    invoke-virtual {v0, v2}, Lcom/google/android/location/o/s;->a(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-static {p1}, Lcom/google/android/location/o/w;->f(Landroid/location/Location;)V

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 70
    goto :goto_0
.end method
