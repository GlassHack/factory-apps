.class public final Lcom/google/android/gms/common/images/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/gms/common/images/a/c;->a:I

    .line 28
    iput p2, p0, Lcom/google/android/gms/common/images/a/c;->b:I

    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    instance-of v2, p1, Lcom/google/android/gms/common/images/a/c;

    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/images/a/c;

    .line 46
    iget v2, p1, Lcom/google/android/gms/common/images/a/c;->a:I

    iget v3, p0, Lcom/google/android/gms/common/images/a/c;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/google/android/gms/common/images/a/c;->b:I

    iget v3, p0, Lcom/google/android/gms/common/images/a/c;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/images/a/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/images/a/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
