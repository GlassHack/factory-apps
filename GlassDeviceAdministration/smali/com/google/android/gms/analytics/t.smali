.class Lcom/google/android/gms/analytics/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# instance fields
.field lb:Ljava/lang/String;

.field lc:Ljava/lang/String;

.field nI:Ljava/lang/String;

.field nJ:I

.field nK:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/t;->nJ:I

    iput v0, p0, Lcom/google/android/gms/analytics/t;->nK:I

    return-void
.end method


# virtual methods
.method public aD()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->lb:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->lb:Ljava/lang/String;

    return-object v0
.end method

.method public aF()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->lc:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public aH()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->nI:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->nI:Ljava/lang/String;

    return-object v0
.end method

.method public aJ()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/t;->nJ:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/t;->nJ:I

    return v0
.end method

.method public aL()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/t;->nK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aM()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/t;->nK:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
