.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;
.super Lcom/google/android/gms/auth/be/proximity/authorization/d;
.source "SourceFile"


# instance fields
.field final a:[B

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/d;-><init>(B)V

    .line 33
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->a:[B

    .line 34
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->b:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->c:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->a:[B

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->a:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 58
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->a:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
