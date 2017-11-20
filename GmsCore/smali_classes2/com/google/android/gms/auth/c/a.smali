.class public final Lcom/google/android/gms/auth/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static volatile b:Lcom/google/android/gms/auth/c/a;

.field private static volatile c:Lcom/google/android/gms/auth/a/j;

.field private static volatile d:Ljava/security/PrivateKey;

.field private static volatile e:Ljava/security/PublicKey;

.field private static volatile f:[B

.field private static volatile g:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/c/a;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/c/a;
    .locals 2

    .prologue
    .line 73
    sget-object v1, Lcom/google/android/gms/auth/c/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/c/a;->b:Lcom/google/android/gms/auth/c/a;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/gms/auth/c/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/c/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/c/a;->b:Lcom/google/android/gms/auth/c/a;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-object v0, Lcom/google/android/gms/auth/c/a;->b:Lcom/google/android/gms/auth/c/a;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/http/GoogleHttpClient;)Ljava/security/PublicKey;
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 94
    const-string v0, "GLSUser"

    const-string v1, "[ ChannelManager ] Attempting to channel bind connection HttpClient."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/google/android/gms/auth/b/a;->j:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v6, 0x5d4044

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    move v1, v2

    .line 102
    :goto_0
    sget-object v0, Lcom/google/android/gms/auth/b/a;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_1

    move v0, v2

    .line 104
    :goto_1
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 119
    :try_start_0
    sget-object v1, Lcom/google/android/gms/auth/c/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/auth/c/a;->d:Ljava/security/PrivateKey;

    if-nez v0, :cond_4

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v0, "rsa.channel.wrapper"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v0, :cond_3

    const-string v0, "rsa.channel.wrapper"

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    new-instance v8, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v8, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v8

    new-instance v9, Ljavax/security/auth/x500/X500Principal;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CN="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    const-string v6, "RSA"

    invoke-virtual {v0, v6}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v0

    const-string v6, "RSA"

    const-string v7, "AndroidKeyStore"

    invoke-static {v6, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to generate RSA key in AndroidKeyStore!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ ChannelManager ] Will proceed without channel binding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 129
    :goto_2
    return-object v0

    :cond_0
    move v1, v3

    .line 100
    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 102
    goto/16 :goto_1

    .line 119
    :cond_2
    :try_start_3
    const-string v0, "rsa.channel.wrapper"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to retrieve newly create RSA key from AndroidKeyStore!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/auth/c/a;->d:Ljava/security/PrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/c/a;->e:Ljava/security/PublicKey;

    :cond_4
    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    const-string v6, "auth.channel.store.properties"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/auth/a/j;

    invoke-direct {v0, v5}, Lcom/google/android/gms/auth/a/j;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    :cond_5
    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    const-string v5, "wrapped_private_channel_key_b64"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    const-string v6, "public_channel_key_b64"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6

    if-nez v5, :cond_b

    :cond_6
    const-string v0, "GLSUser"

    const-string v5, "[ ChannelManager ] Initializing channel key"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/j;->c()V

    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/j;->b()V

    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    const-string v5, "secp256r1"

    invoke-direct {v0, v5}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    const-string v5, "EC"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v0, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/c/a;->g:Ljava/security/PublicKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    const-string v6, "RSA/ECB/PKCS1Padding"

    const-string v7, "AndroidOpenSSL"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gms/auth/c/a;->e:Ljava/security/PublicKey;

    invoke-virtual {v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/c/a;->f:[B

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    const-string v7, "wrapped_private_channel_key_b64"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v5}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    const-string v6, "wrapped_private_channel_key_format_b64"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v5, v7}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    sget-object v5, Lcom/google/android/gms/auth/c/a;->g:Ljava/security/PublicKey;

    invoke-interface {v5}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    const-string v6, "public_channel_key_format_b64"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v5, v7}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_4
    sget-object v5, Lcom/google/android/gms/auth/c/a;->g:Ljava/security/PublicKey;

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/util/g;->a([B)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    const-string v6, "public_channel_key_b64"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v5, v7}, Lcom/google/android/gms/auth/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_5
    const-string v0, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[ ChannelManager ] Successfully pubKey? "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Expected a clean key store!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/google/android/gms/auth/c/a;->c:Lcom/google/android/gms/auth/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/j;->b()V

    :goto_6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :try_start_4
    sget-object v0, Lcom/google/android/gms/auth/c/a;->f:[B

    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/gms/auth/c/a;->d:Ljava/security/PrivateKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const-string v1, "EC"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/http/GoogleHttpClient;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a(Ljava/security/PrivateKey;)V

    const-string v0, "GLSUser"

    const-string v1, "[ ChannelManager ] Successfulling bound channel!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/google/android/gms/auth/c/a;->g:Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 119
    :cond_b
    :try_start_5
    const-string v2, "GLSUser"

    const-string v3, "[ ChannelManager ] Using existing channel key."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/c/a;->f:[B

    const-string v0, "EC"

    const-string v2, "BC"

    invoke-static {v0, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-static {v5}, Lcom/google/android/gms/common/util/g;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/c/a;->g:Ljava/security/PublicKey;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 128
    :cond_c
    const-string v0, "GLSUser"

    const-string v1, "[ ChannelManager ] Skip channel binding on pre-KLP devices."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 129
    goto/16 :goto_2
.end method
