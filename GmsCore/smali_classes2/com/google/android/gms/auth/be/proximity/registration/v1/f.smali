.class public final Lcom/google/android/gms/auth/be/proximity/registration/v1/f;
.super Lcom/google/android/gms/auth/be/proximity/a/a;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/a/a;-><init>(B)V

    .line 35
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->a:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->b:Ljava/lang/String;

    .line 37
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->c:[B

    .line 38
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;

    if-eqz v1, :cond_0

    .line 55
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->c:[B

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->c:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->c:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
