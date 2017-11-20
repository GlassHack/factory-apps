.class abstract Lcom/google/android/gms/location/places/i$a;
.super Lcom/google/android/gms/location/places/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/i$b",
        "<",
        "Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;",
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

    invoke-direct {p0}, Lcom/google/android/gms/location/places/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/i$a;->x(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected x(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;->empty(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;

    move-result-object v0

    return-object v0
.end method
