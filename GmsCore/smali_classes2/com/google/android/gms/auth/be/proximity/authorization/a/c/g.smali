.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;
.super Lcom/google/android/gms/auth/be/proximity/authorization/k;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/k;-><init>(B)V

    .line 21
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;->a:[B

    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 30
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;->a:[B

    iget-object v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;->a:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
