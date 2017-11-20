.class public Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;
.super Lcom/google/android/gms/common/data/c;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/c",
        "<",
        "Lcom/google/android/gms/location/places/PlaceLikelihood;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final Hw:I

.field private final mContext:Landroid/content/Context;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "source"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V
    .locals 2
    .param p1, "holder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "source"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V
    .locals 2
    .param p1, "holder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p3, "source"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/PlaceLikelihood;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->j(Z)V

    invoke-static {p3}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$Source;->cL(I)V

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->px:Lcom/google/android/gms/common/api/Status;

    iput p3, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->Hw:I

    iput-object p4, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->mContext:Landroid/content/Context;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static empty(Lcom/google/android/gms/common/api/Status;I)Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;
    .locals 2
    .param p0, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p1, "source"    # I

    .prologue
    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;ILandroid/content/Context;)V

    return-object v0
.end method

.method public static emptyDataHolder(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    invoke-static {}, Lcom/google/android/gms/common/data/c;->buildDataHolder()Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder$a;->aQ(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public static readFromIntent(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "context must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    sget-object v2, Lcom/google/android/gms/location/places/PlaceLikelihood;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/data/c;->buildDataHolder()Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    invoke-static {v2, v0}, Lcom/google/android/gms/common/data/c;->addValue(Lcom/google/android/gms/common/data/DataHolder$a;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_1

    :cond_2
    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$Source;->cL(I)V

    new-instance v1, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/DataHolder$a;->aQ(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0, v3, p1}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic get(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->get(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 3
    .param p1, "row"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/google/android/gms/common/data/c;->get(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceLikelihood;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/location/places/PlaceLikelihood;->Hu:Lcom/google/android/gms/internal/do;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ds;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/ds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/ds;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->get(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->Hw:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Ljava/lang/Iterable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->px:Lcom/google/android/gms/common/api/Status;

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    iget v1, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->Hw:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
