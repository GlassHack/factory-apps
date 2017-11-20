.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;
.super Lcom/google/android/gms/auth/be/proximity/authorization/k;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/k;-><init>(B)V

    .line 25
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;->a:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 34
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;

    iget-object v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
