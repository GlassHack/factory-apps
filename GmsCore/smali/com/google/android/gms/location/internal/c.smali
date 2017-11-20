.class final Lcom/google/android/gms/location/internal/c;
.super Lcom/google/android/gms/location/internal/e;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field final synthetic e:Lcom/google/android/gms/location/l;

.field final synthetic f:Landroid/os/Looper;

.field final synthetic g:Lcom/google/android/gms/location/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/b;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/gms/location/internal/c;->g:Lcom/google/android/gms/location/internal/b;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/c;->d:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/c;->e:Lcom/google/android/gms/location/l;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/c;->f:Landroid/os/Looper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/internal/e;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 3

    .prologue
    .line 102
    check-cast p1, Lcom/google/android/gms/location/internal/p;

    iget-object v0, p0, Lcom/google/android/gms/location/internal/c;->d:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/c;->e:Lcom/google/android/gms/location/l;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/c;->f:Landroid/os/Looper;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/c;->a(Lcom/google/android/gms/common/api/aa;)V

    return-void
.end method
