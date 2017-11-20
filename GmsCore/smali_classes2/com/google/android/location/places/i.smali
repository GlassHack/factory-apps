.class public final Lcom/google/android/location/places/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/b/n;


# instance fields
.field public a:Lcom/google/android/gms/location/places/internal/PlacesParams;

.field public b:Lcom/google/android/location/places/aa;

.field public c:Ljava/lang/Exception;

.field public d:Lcom/google/j/b/o;

.field public e:Lcom/google/android/location/places/l;

.field public f:J

.field final synthetic g:Lcom/google/android/location/places/b;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/b;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/places/aa;Lcom/google/android/location/places/l;)V
    .locals 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/location/places/i;->g:Lcom/google/android/location/places/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/google/android/location/places/i;->a:Lcom/google/android/gms/location/places/internal/PlacesParams;

    .line 364
    iput-object p3, p0, Lcom/google/android/location/places/i;->b:Lcom/google/android/location/places/aa;

    .line 365
    iput-object p4, p0, Lcom/google/android/location/places/i;->e:Lcom/google/android/location/places/l;

    .line 366
    iget-object v0, p1, Lcom/google/android/location/places/b;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/places/i;->f:J

    .line 367
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 2

    .prologue
    .line 387
    iput-object p2, p0, Lcom/google/android/location/places/i;->d:Lcom/google/j/b/o;

    .line 388
    iget-object v0, p0, Lcom/google/android/location/places/i;->g:Lcom/google/android/location/places/b;

    iget-object v0, v0, Lcom/google/android/location/places/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/places/k;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/k;-><init>(Lcom/google/android/location/places/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method public final a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 371
    iput-object p2, p0, Lcom/google/android/location/places/i;->c:Ljava/lang/Exception;

    .line 372
    const-string v0, "Places"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "Places"

    const-string v1, "masf request failed"

    invoke-static {v0, v1, p2}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/i;->g:Lcom/google/android/location/places/b;

    iget-object v0, v0, Lcom/google/android/location/places/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/places/j;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/j;-><init>(Lcom/google/android/location/places/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method
