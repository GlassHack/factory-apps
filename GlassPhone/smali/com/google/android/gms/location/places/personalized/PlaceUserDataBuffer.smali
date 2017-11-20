.class public final Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;
.super Lcom/google/android/gms/common/data/c;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/c",
        "<",
        "Lcom/google/android/gms/location/places/personalized/PlaceUserData;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

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

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;->px:Lcom/google/android/gms/common/api/Status;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static empty(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;
    .locals 2
    .param p0, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    new-instance v0, Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
