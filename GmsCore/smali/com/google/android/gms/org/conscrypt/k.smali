.class final Lcom/google/android/gms/org/conscrypt/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field private final b:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;J)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/k;->b:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 28
    iput-wide p2, p0, Lcom/google/android/gms/org/conscrypt/k;->a:J

    .line 29
    return-void
.end method

.method public static a(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/google/android/gms/org/conscrypt/k;
    .locals 7

    .prologue
    .line 76
    new-instance v6, Lcom/google/android/gms/org/conscrypt/k;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_new(J)J

    move-result-wide v0

    invoke-direct {v6, p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/k;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    iget-wide v2, v6, Lcom/google/android/gms/org/conscrypt/k;->a:J

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(JJ[B[B)V

    .line 81
    return-object v6
.end method


# virtual methods
.method public final a()Ljava/security/spec/ECPoint;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/k;->b:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/k;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_get_affine_coordinates(JJ)[[B

    move-result-object v0

    .line 59
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 60
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 61
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lcom/google/android/gms/org/conscrypt/k;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    check-cast p1, Lcom/google/android/gms/org/conscrypt/k;

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/k;->b:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    iget-object v1, p1, Lcom/google/android/gms/org/conscrypt/k;->b:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_cmp(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/k;->b:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/k;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/org/conscrypt/k;->a:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_cmp(JJJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/k;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/k;->a:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_clear_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
