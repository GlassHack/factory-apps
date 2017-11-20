.class public final Lcom/google/android/location/places/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/c/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/location/places/internal/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/a;)V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/google/android/location/places/ao;->a:Ljava/lang/String;

    .line 647
    iput-object p2, p0, Lcom/google/android/location/places/ao;->b:Lcom/google/android/gms/location/places/internal/a;

    .line 648
    return-void
.end method

.method private a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    .prologue
    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/ao;->b:Lcom/google/android/gms/location/places/internal/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/places/internal/a;->c(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    const-string v1, "Places"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    const-string v1, "Places"

    const-string v2, "place user data callback failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 640
    check-cast p1, Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/common/data/e;->e()Lcom/google/android/gms/common/data/g;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/d/a;

    iget-object v3, p0, Lcom/google/android/location/places/ao;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/location/places/d/a;->a(Ljava/lang/String;Lcom/google/android/location/places/d/a;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/g;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/g;->a(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/places/ao;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 662
    const-string v0, "Places"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "Places"

    const-string v1, "Request for place user data failed"

    invoke-static {v0, v1, p1}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/places/ao;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 666
    return-void
.end method
