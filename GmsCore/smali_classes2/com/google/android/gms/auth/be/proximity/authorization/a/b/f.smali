.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;
.super Lcom/google/android/gms/auth/be/proximity/authorization/k;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/k;-><init>(B)V

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    if-eqz v1, :cond_0

    .line 37
    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;->a:I

    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 39
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
