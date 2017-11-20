.class final Lcom/google/android/gms/location/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/b;
    .locals 8

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "locationServices"

    iget-object v1, p3, Lcom/google/android/gms/common/internal/ClientSettings;->a:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->a()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/p;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
