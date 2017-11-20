.class final Lcom/google/android/gms/location/places/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/t;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/location/places/t;->a:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/b;
    .locals 8

    .prologue
    .line 41
    check-cast p4, Lcom/google/android/gms/location/places/u;

    iget-object v0, p0, Lcom/google/android/gms/location/places/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/location/places/t;->a:Ljava/lang/String;

    :goto_0
    if-nez p4, :cond_0

    new-instance v0, Lcom/google/android/gms/location/places/v;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/v;-><init>()V

    new-instance v0, Lcom/google/android/gms/location/places/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/u;-><init>(B)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/internal/p;

    const-string v6, "places"

    iget-object v1, p3, Lcom/google/android/gms/common/internal/ClientSettings;->a:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->a()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/p;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
