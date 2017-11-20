.class abstract Lcom/google/android/gms/location/places/i$b;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<TR;",
        "Lcom/google/android/gms/internal/dh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/Places;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    return-void
.end method
