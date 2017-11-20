.class public final Lcom/google/android/gms/org/conscrypt/ChainStrengthAnalyzer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_MODULUS:I = 0x400

.field private static final OID_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.2.840.113549.1.1.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/org/conscrypt/ChainStrengthAnalyzer;->OID_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final check([Ljava/security/cert/X509Certificate;)V
    .locals 3

    .prologue
    .line 29
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method private static final checkCert(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/ChainStrengthAnalyzer;->checkModulusLength(Ljava/security/cert/X509Certificate;)V

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/ChainStrengthAnalyzer;->checkNotMD5(Ljava/security/cert/X509Certificate;)V

    .line 37
    return-void
.end method

.method private static final checkModulusLength(Ljava/security/cert/X509Certificate;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 41
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 43
    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Modulus is < 1024 bits"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method private static final checkNotMD5(Ljava/security/cert/X509Certificate;)V
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/google/android/gms/org/conscrypt/ChainStrengthAnalyzer;->OID_BLACKLIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Signature uses an insecure hash function"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method
