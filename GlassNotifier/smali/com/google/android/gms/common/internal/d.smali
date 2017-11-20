.class public final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/d$a;
    }
.end annotation


# instance fields
.field private final Ta:Landroid/view/View;

.field private final Wh:Lcom/google/android/gms/common/internal/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/internal/d$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/d$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/d;->Ta:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->iW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iX()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->iX()I

    move-result v0

    return v0
.end method

.method public iY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->iY()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public iZ()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->iY()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public ja()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->ja()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Wh:Lcom/google/android/gms/common/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d$a;->jb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jc()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->Ta:Landroid/view/View;

    return-object v0
.end method
