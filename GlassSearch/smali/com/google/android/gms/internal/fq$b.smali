.class public Lcom/google/android/gms/internal/fq$b;
.super Lcom/google/android/gms/internal/fq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fq",
        "<",
        "Lcom/google/android/gms/people/model/PhoneNumber;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/fq;-><init>(Landroid/os/Bundle;CC)V

    return-void
.end method


# virtual methods
.method protected synthetic r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fq$b;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/people/model/PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/people/model/PhoneNumber;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fr;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/fr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
