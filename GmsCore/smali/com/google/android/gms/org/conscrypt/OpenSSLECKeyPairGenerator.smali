.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final DEFAULT_KEY_SIZE:I = 0xc0

.field private static final SIZE_TO_CURVE_NAME:Ljava/util/Map;


# instance fields
.field private group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "prime192v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp224r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp384r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp521r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "EC"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 59
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_generate_key(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 60
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    new-instance v3, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public final initialize(ILjava/security/SecureRandom;)V
    .locals 4

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown key size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown curve "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 80
    return-void
.end method

.method public final initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4

    .prologue
    .line 85
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 105
    :goto_0
    return-void

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_2

    .line 90
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    .line 92
    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 100
    if-nez v1, :cond_1

    .line 101
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown curve name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter must be ECParameterSpec or ECGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
