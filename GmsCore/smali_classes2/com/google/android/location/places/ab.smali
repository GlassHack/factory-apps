.class public final Lcom/google/android/location/places/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/PendingIntent$OnFinished;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/location/places/ac;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/ac;-><init>(Lcom/google/android/location/places/ab;)V

    iput-object v0, p0, Lcom/google/android/location/places/ab;->b:Landroid/app/PendingIntent$OnFinished;

    .line 26
    iput-object p1, p0, Lcom/google/android/location/places/ab;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;Lcom/google/android/location/places/Subscription;)V
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Lcom/google/android/gms/common/data/e;->e()Lcom/google/android/gms/common/data/g;

    move-result-object v1

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    .line 40
    invoke-static {v1, v0}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/g;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/places/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/g;->a(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/location/places/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/places/k;->a(Landroid/content/Intent;)V

    invoke-interface {p3}, Lcom/google/android/location/places/Subscription;->c()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ab;->a:Landroid/content/Context;

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/google/android/location/places/ab;->b:Landroid/app/PendingIntent$OnFinished;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 45
    return-void
.end method
