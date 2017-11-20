.class abstract Lcom/google/android/gms/internal/fw$a;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Images$LoadImageResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fw$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$LoadImageResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fw$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fw$a$1;-><init>(Lcom/google/android/gms/internal/fw$a;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$a;->S(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$LoadImageResult;

    move-result-object v0

    return-object v0
.end method
