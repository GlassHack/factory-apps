.class final Lcom/google/android/gms/org/conscrypt/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/d;->a:[B

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/d;->b:I

    .line 31
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 40
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/d;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_0
    check-cast p1, Lcom/google/android/gms/org/conscrypt/d;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/d;->a:[B

    iget-object v1, p1, Lcom/google/android/gms/org/conscrypt/d;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/d;->b:I

    return v0
.end method
