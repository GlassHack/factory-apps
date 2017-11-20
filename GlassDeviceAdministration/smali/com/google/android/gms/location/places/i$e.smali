.class abstract Lcom/google/android/gms/location/places/i$e;
.super Lcom/google/android/gms/location/places/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/i$b",
        "<",
        "Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/i$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/i$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/i$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected A(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;->empty(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$e;->A(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/personalized/PlaceUserDataBuffer;

    move-result-object v0

    return-object v0
.end method
