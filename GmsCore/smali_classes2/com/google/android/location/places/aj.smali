.class public final Lcom/google/android/location/places/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/a;


# instance fields
.field private final a:Lcom/google/android/gms/location/places/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/places/internal/a;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/google/android/location/places/aj;->a:Lcom/google/android/gms/location/places/internal/a;

    .line 592
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 4

    .prologue
    .line 596
    invoke-static {}, Lcom/google/android/gms/common/data/e;->e()Lcom/google/android/gms/common/data/g;

    move-result-object v1

    .line 597
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePrediction;

    .line 598
    invoke-static {v1, v0}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/g;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/data/g;->a(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/aj;->a:Lcom/google/android/gms/location/places/internal/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/places/internal/a;->b(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    .line 610
    :goto_1
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 605
    :try_start_1
    const-string v2, "Places"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    const-string v2, "Places"

    const-string v3, "query suggestion callback failed"

    invoke-static {v2, v3, v0}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    throw v0
.end method
