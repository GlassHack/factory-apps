.class final Lcom/google/android/location/o/o;
.super Lcom/google/android/location/o/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field final synthetic b:Lcom/google/android/gms/location/l;

.field final synthetic c:Landroid/os/Looper;

.field final synthetic d:Lcom/google/android/location/o/n;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/location/o/o;->d:Lcom/google/android/location/o/n;

    iput-object p2, p0, Lcom/google/android/location/o/o;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iput-object p3, p0, Lcom/google/android/location/o/o;->b:Lcom/google/android/gms/location/l;

    iput-object p4, p0, Lcom/google/android/location/o/o;->c:Landroid/os/Looper;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/o/r;-><init>(Lcom/google/android/location/o/n;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/y;
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/o/o;->d:Lcom/google/android/location/o/n;

    iget-object v0, v0, Lcom/google/android/location/o/n;->c:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/google/android/location/o/o;->d:Lcom/google/android/location/o/n;

    iget-object v1, v1, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/location/o/o;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iget-object v3, p0, Lcom/google/android/location/o/o;->b:Lcom/google/android/gms/location/l;

    iget-object v4, p0, Lcom/google/android/location/o/o;->c:Landroid/os/Looper;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    return-object v0
.end method
