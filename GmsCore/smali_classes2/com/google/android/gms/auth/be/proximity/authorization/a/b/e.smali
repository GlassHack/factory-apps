.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;
.super Lcom/google/android/gms/auth/be/proximity/authorization/d;
.source "SourceFile"


# instance fields
.field final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/d;-><init>(B)V

    .line 26
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->b:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;

    if-eqz v1, :cond_0

    .line 41
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;

    .line 42
    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->a:I

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
