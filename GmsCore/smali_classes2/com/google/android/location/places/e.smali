.class public final Lcom/google/android/location/places/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/b/n;


# instance fields
.field public a:Lcom/google/android/gms/location/places/internal/PlacesParams;

.field public b:Lcom/google/android/location/places/a;

.field public c:Ljava/lang/Exception;

.field public d:Lcom/google/j/b/o;

.field public e:Lcom/google/android/location/places/l;

.field public f:Ljava/lang/Object;

.field public g:J

.field final synthetic h:Lcom/google/android/location/places/b;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/a;Lcom/google/android/location/places/l;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/location/places/e;->h:Lcom/google/android/location/places/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/google/android/location/places/e;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    .line 411
    iput-object p3, p0, Lcom/google/android/location/places/e;->b:Lcom/google/android/location/places/a;

    .line 412
    iput-object p4, p0, Lcom/google/android/location/places/e;->e:Lcom/google/android/location/places/l;

    .line 413
    iput-object p5, p0, Lcom/google/android/location/places/e;->f:Ljava/lang/Object;

    .line 414
    iget-object v0, p1, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/places/e;->g:J

    .line 415
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 2

    .prologue
    .line 435
    iput-object p2, p0, Lcom/google/android/location/places/e;->d:Lcom/google/j/b/o;

    .line 436
    iget-object v0, p0, Lcom/google/android/location/places/e;->h:Lcom/google/android/location/places/b;

    iget-object v0, v0, Lcom/google/android/location/places/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/places/g;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/g;-><init>(Lcom/google/android/location/places/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public final a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 419
    iput-object p2, p0, Lcom/google/android/location/places/e;->c:Ljava/lang/Exception;

    .line 420
    const-string v0, "Places"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "Places"

    const-string v1, "masf request failed"

    invoke-static {v0, v1, p2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/e;->h:Lcom/google/android/location/places/b;

    iget-object v0, v0, Lcom/google/android/location/places/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/places/f;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/f;-><init>(Lcom/google/android/location/places/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-void
.end method
