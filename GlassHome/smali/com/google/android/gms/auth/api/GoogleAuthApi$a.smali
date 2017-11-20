.class public abstract Lcom/google/android/gms/auth/api/GoogleAuthApi$a;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/GoogleAuthApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<",
        "Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;",
        "Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/auth/api/GoogleAuthApi;->bs()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/GoogleAuthApi$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApi$a$1;-><init>(Lcom/google/android/gms/auth/api/GoogleAuthApi$a;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApi$a;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;

    move-result-object v0

    return-object v0
.end method
