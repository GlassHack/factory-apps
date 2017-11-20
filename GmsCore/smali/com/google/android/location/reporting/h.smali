.class public final Lcom/google/android/location/reporting/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/reporting/r;


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/r;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/location/reporting/h;->a:Lcom/google/android/location/reporting/r;

    .line 22
    return-void
.end method

.method private a(I)Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    .line 70
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 71
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 72
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 75
    iget-object v1, p0, Lcom/google/android/location/reporting/h;->a:Lcom/google/android/location/reporting/r;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/r;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 76
    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public final a([B)[B
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/h;->a(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final b([B)[B
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/h;->a(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
