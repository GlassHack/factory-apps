.class public final Lcom/google/maps/api/android/lib6/c/t;
.super Lcom/google/android/gms/maps/internal/r;

# interfaces
.implements Lcom/google/android/gms/common/g;
.implements Lcom/google/android/gms/common/h;
.implements Lcom/google/android/gms/location/l;
.implements Lcom/google/maps/api/android/lib6/c/s;
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Lcom/google/android/gms/location/LocationRequest;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z

.field private c:Lcom/google/android/gms/maps/internal/aj;

.field private d:Lcom/google/android/gms/location/k;

.field private e:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/c/t;->f:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/r;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/t;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/maps/api/android/lib6/c/t;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/t;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/c/t;-><init>(Landroid/os/Handler;)V

    new-instance v1, Lcom/google/android/gms/location/k;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/location/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;)V

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/c/t;->d:Lcom/google/android/gms/location/k;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->d:Lcom/google/android/gms/location/k;

    invoke-virtual {v0}, Lcom/google/android/gms/location/k;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->e:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->d:Lcom/google/android/gms/location/k;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/t;->f:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/location/k;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/l;)V

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/t;->e:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/aj;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "already activated"

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    if-eqz p1, :cond_2

    :goto_1
    const-string v0, "listener cannot be null"

    invoke-static {v1, v0}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/t;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->d:Lcom/google/android/gms/location/k;

    invoke-virtual {v0}, Lcom/google/android/gms/location/k;->a()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "already activated"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/t;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/t;->f()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/t;->b:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->d:Lcom/google/android/gms/location/k;

    invoke-virtual {v0}, Lcom/google/android/gms/location/k;->a()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/t;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/t;->b:Z

    return-void
.end method

.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/t;->c:Lcom/google/android/gms/maps/internal/aj;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/t;->e:Landroid/location/Location;

    invoke-static {v1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/aj;->a(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
