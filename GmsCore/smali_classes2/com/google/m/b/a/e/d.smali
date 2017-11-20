.class public final Lcom/google/m/b/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;

.field private static final c:Ljava/lang/Boolean;

.field private static final d:Ljava/math/BigInteger;

.field private static final e:Ljava/math/BigInteger;

.field private static final f:Ljava/security/spec/ECParameterSpec;

.field private static final g:Ljava/math/BigInteger;

.field private static final h:Ljava/math/BigInteger;

.field private static final i:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcom/google/m/b/a/e/d;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "1"

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/m/b/a/e/d;->d:Ljava/math/BigInteger;

    .line 49
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "2"

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/m/b/a/e/d;->e:Ljava/math/BigInteger;

    .line 70
    sget-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/google/m/b/a/e/d;->f:Ljava/security/spec/ECParameterSpec;

    .line 76
    sget-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/google/m/b/a/e/d;->g:Ljava/math/BigInteger;

    .line 82
    sget-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/google/m/b/a/e/d;->h:Ljava/math/BigInteger;

    .line 88
    sget-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    sput-object v1, Lcom/google/m/b/a/e/d;->i:Ljava/math/BigInteger;

    .line 117
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/m/b/a/e/d;->a:Ljava/math/BigInteger;

    .line 134
    sget-object v0, Lcom/google/m/b/a/e/d;->e:Ljava/math/BigInteger;

    sput-object v0, Lcom/google/m/b/a/e/d;->b:Ljava/math/BigInteger;

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/google/m/b/a/e/d;->e()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/google/m/b/a/e/d;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_2
    sget-object v0, Lcom/google/m/b/a/e/d;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    .line 88
    :cond_3
    sget-object v0, Lcom/google/m/b/a/e/d;->f:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3
.end method

.method public static a(Ljava/security/PublicKey;)Lcom/google/m/b/a/e/m;
    .locals 3

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_3

    .line 163
    new-instance v0, Lcom/google/m/b/a/e/m;

    invoke-direct {v0}, Lcom/google/m/b/a/e/m;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/m;->a(I)Lcom/google/m/b/a/e/m;

    move-result-object v0

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    instance-of v1, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an EC Public Key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    new-instance v1, Lcom/google/m/b/a/e/l;

    invoke-direct {v1}, Lcom/google/m/b/a/e/l;-><init>()V

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/l;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/l;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/l;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/m;->a(Lcom/google/m/b/a/e/l;)Lcom/google/m/b/a/e/m;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 167
    :cond_3
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_6

    .line 168
    new-instance v0, Lcom/google/m/b/a/e/m;

    invoke-direct {v0}, Lcom/google/m/b/a/e/m;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/m;->a(I)Lcom/google/m/b/a/e/m;

    move-result-object v0

    if-nez p0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    instance-of v1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an RSA Public Key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    new-instance v1, Lcom/google/m/b/a/e/q;

    invoke-direct {v1}, Lcom/google/m/b/a/e/q;-><init>()V

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/q;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/q;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/q;->a(I)Lcom/google/m/b/a/e/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/m;->a(Lcom/google/m/b/a/e/q;)Lcom/google/m/b/a/e/m;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_6
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_9

    .line 173
    new-instance v0, Lcom/google/m/b/a/e/m;

    invoke-direct {v0}, Lcom/google/m/b/a/e/m;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/m;->a(I)Lcom/google/m/b/a/e/m;

    move-result-object v0

    if-nez p0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    instance-of v1, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a DH Public Key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    new-instance v1, Lcom/google/m/b/a/e/k;

    invoke-direct {v1}, Lcom/google/m/b/a/e/k;-><init>()V

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/m/b/a/e/k;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/m/b/a/e/m;->a(Lcom/google/m/b/a/e/k;)Lcom/google/m/b/a/e/m;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported PublicKey type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/google/m/b/a/e/d;->e()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/m/b/a/e/m;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 216
    iget v0, p0, Lcom/google/m/b/a/e/m;->a:I

    packed-switch v0, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported GenericPublicKey type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/m/b/a/e/m;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/google/m/b/a/e/m;->b:Lcom/google/m/b/a/e/l;

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/l;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/google/m/b/a/e/m;->c:Lcom/google/m/b/a/e/q;

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/q;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/google/m/b/a/e/m;->d:Lcom/google/m/b/a/e/k;

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/k;)Ljavax/crypto/interfaces/DHPublicKey;

    move-result-object v0

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/google/m/b/a/e/l;)Ljava/security/interfaces/ECPublicKey;
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 236
    sget-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Elliptic Curve keys not supported on this platform"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/m/b/a/e/l;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/google/m/b/a/e/l;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {v1}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v1

    .line 242
    :try_start_0
    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a([B)V

    .line 243
    invoke-static {v1}, Lcom/google/m/b/a/e/d;->a([B)V

    .line 244
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 245
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 246
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Point encoding must use only non-negative integers"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 246
    :cond_2
    :try_start_1
    sget-object v1, Lcom/google/m/b/a/e/d;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_4

    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Point lies outside of the expected field"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v0, v1}, Lcom/google/m/b/a/e/d;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/google/m/b/a/e/d;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/google/m/b/a/e/d;->h:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/google/m/b/a/e/d;->i:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Point does not lie on the expected curve"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_5
    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v2, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Lcom/google/m/b/a/e/d;->f:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v3, v4, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method private static a(Lcom/google/m/b/a/e/q;)Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/m/b/a/e/q;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    .line 262
    array-length v1, v0

    const/16 v2, 0x101

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0

    .line 263
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 264
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    .line 265
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0

    .line 267
    :cond_1
    iget v0, p0, Lcom/google/m/b/a/e/q;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 269
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v1, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a(Lcom/google/m/b/a/e/k;)Ljavax/crypto/interfaces/DHPublicKey;
    .locals 5

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/m/b/a/e/k;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    .line 284
    array-length v1, v0

    const/16 v2, 0x101

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0

    .line 287
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    sget-object v0, Lcom/google/m/b/a/e/d;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/google/m/b/a/e/d;->a:Ljava/math/BigInteger;

    sget-object v2, Lcom/google/m/b/a/e/d;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0

    .line 289
    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0

    .line 293
    :cond_2
    :try_start_1
    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/DHPublicKeySpec;

    sget-object v3, Lcom/google/m/b/a/e/d;->a:Ljava/math/BigInteger;

    sget-object v4, Lcom/google/m/b/a/e/d;->b:Ljava/math/BigInteger;

    invoke-direct {v2, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 295
    :catch_1
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a([B)V
    .locals 2

    .prologue
    const/16 v1, 0x21

    .line 393
    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-gt v0, v1, :cond_0

    array-length v0, p0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0}, Ljava/security/spec/InvalidKeySpecException;-><init>()V

    throw v0

    .line 398
    :cond_1
    return-void
.end method

.method public static b()Ljava/security/KeyPair;
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/google/m/b/a/e/d;->f()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/security/KeyPair;
    .locals 6

    .prologue
    .line 320
    :try_start_0
    invoke-static {}, Lcom/google/m/b/a/e/d;->g()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v1, Lcom/google/m/b/a/e/d;->a:Ljava/math/BigInteger;

    sget-object v2, Lcom/google/m/b/a/e/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 324
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x200

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 325
    new-instance v2, Lcom/google/m/b/a/e/f;

    invoke-direct {v2, v1, v0}, Lcom/google/m/b/a/e/f;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 326
    new-instance v3, Lcom/google/m/b/a/e/g;

    sget-object v4, Lcom/google/m/b/a/e/d;->b:Ljava/math/BigInteger;

    sget-object v5, Lcom/google/m/b/a/e/d;->a:Ljava/math/BigInteger;

    invoke-virtual {v4, v1, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/google/m/b/a/e/g;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    .line 327
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, v3, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lcom/google/m/b/a/e/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static e()Ljava/security/KeyPairGenerator;
    .locals 3

    .prologue
    .line 472
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :goto_0
    return-object v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    .line 484
    :try_start_2
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 487
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to find the NIST P-256 curve"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f()Ljava/security/KeyPairGenerator;
    .locals 2

    .prologue
    .line 496
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 497
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    return-object v0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static g()Ljava/security/KeyPairGenerator;
    .locals 5

    .prologue
    .line 511
    :try_start_0
    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 512
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v2, Lcom/google/m/b/a/e/d;->a:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/m/b/a/e/d;->b:Ljava/math/BigInteger;

    const/16 v4, 0x200

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 594
    :try_start_0
    invoke-static {}, Lcom/google/m/b/a/e/d;->e()Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 596
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method
