.class abstract Lcom/google/android/gms/location/places/ai;
.super Lcom/google/android/gms/location/places/ag;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/gms/location/places/ag;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/gms/location/places/ai;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/google/android/gms/location/places/y;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/y;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/places/h;)V

    return-object v0
.end method
