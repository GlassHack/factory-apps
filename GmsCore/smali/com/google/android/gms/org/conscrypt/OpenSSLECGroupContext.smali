.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final groupCtx:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    .line 34
    return-void
.end method

.method public static getCurveByName(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;
    .locals 4

    .prologue
    .line 39
    const-string v0, "secp256r1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-string p0, "prime256v1"

    .line 45
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    move-result-wide v2

    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 47
    const/4 v0, 0x0

    .line 54
    :goto_1
    return-object v0

    .line 41
    :cond_1
    const-string v0, "secp192r1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string p0, "prime192v1"

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x4

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_set_point_conversion_form(JI)V

    .line 52
    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_set_asn1_flag(JI)V

    .line 54
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    goto :goto_1
.end method

.method public static getInstance(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;
    .locals 8

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_new_curve(I[B[B[B)J

    move-result-wide v0

    .line 61
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_set_point_conversion_form(JI)V

    .line 68
    new-instance v6, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v6, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    .line 70
    new-instance v7, Lcom/google/android/gms/org/conscrypt/k;

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_new(J)J

    move-result-wide v2

    invoke-direct {v7, v6, v2, v3}, Lcom/google/android/gms/org/conscrypt/k;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 73
    iget-wide v2, v7, Lcom/google/android/gms/org/conscrypt/k;->a:J

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(JJ[B[B)V

    .line 76
    iget-wide v2, v7, Lcom/google/android/gms/org/conscrypt/k;->a:J

    invoke-virtual {p6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_set_generator(JJ[B[B)V

    move-object v0, v6

    .line 79
    goto :goto_0
.end method

.method public static getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;
    .locals 10

    .prologue
    .line 115
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    .line 125
    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_1

    .line 126
    const/4 v2, 0x1

    .line 127
    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    move v0, v2

    .line 136
    :goto_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 137
    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    instance-of v1, v0, Ljava/security/spec/ECFieldF2m;

    if-eqz v1, :cond_2

    .line 129
    const/4 v2, 0x2

    .line 130
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getReductionPolynomial()Ljava/math/BigInteger;

    move-result-object v1

    move v0, v2

    goto :goto_1

    .line 132
    :cond_2
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unhandled field class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 95
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    iget-wide v2, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_cmp(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 86
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_clear_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getContext()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    return-wide v0
.end method

.method public final getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 143
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(J)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve(J)[[B

    move-result-object v0

    .line 146
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 147
    new-instance v3, Ljava/math/BigInteger;

    aget-object v4, v0, v5

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 148
    new-instance v4, Ljava/math/BigInteger;

    aget-object v0, v0, v8

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 151
    iget-wide v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v6, v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(J)I

    move-result v0

    .line 152
    if-ne v0, v5, :cond_0

    .line 153
    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-direct {v0, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 160
    :goto_0
    new-instance v2, Ljava/security/spec/EllipticCurve;

    invoke-direct {v2, v0, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 162
    new-instance v0, Lcom/google/android/gms/org/conscrypt/k;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_get_generator(J)J

    move-result-wide v4

    invoke-direct {v0, p0, v4, v5}, Lcom/google/android/gms/org/conscrypt/k;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/k;->a()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 166
    new-instance v3, Ljava/math/BigInteger;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_get_order(J)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 167
    new-instance v4, Ljava/math/BigInteger;

    iget-wide v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->groupCtx:J

    invoke-static {v6, v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(J)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 169
    new-instance v5, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v5, v2, v0, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 170
    invoke-static {v5, v1}, Lcom/google/android/gms/org/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    .line 171
    return-object v5

    .line 154
    :cond_0
    if-ne v0, v8, :cond_1

    .line 155
    new-instance v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, v5, v2}, Ljava/security/spec/ECFieldF2m;-><init>(ILjava/math/BigInteger;)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown curve type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
