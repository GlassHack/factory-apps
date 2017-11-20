.class final Lcom/google/android/gms/internal/jp$4;
.super Lcom/google/android/gms/internal/jp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jp;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/jp",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic bb(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jp$4;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/jp;->iF()Lcom/google/android/gms/internal/jp$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jp$4;->Uu:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$4;->Uv:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/jp$a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
