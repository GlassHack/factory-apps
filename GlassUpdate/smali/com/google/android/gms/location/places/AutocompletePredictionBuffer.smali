.class public Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;
.super Lcom/google/android/gms/common/data/c;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/c",
        "<",
        "Lcom/google/android/gms/location/places/AutocompletePrediction;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/google/android/gms/common/data/DataHolder;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "holder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/AutocompletePrediction;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object p2, p0, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;->px:Lcom/google/android/gms/common/api/Status;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static empty(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;
    .locals 2
    .param p0, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    new-instance v0, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

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


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
