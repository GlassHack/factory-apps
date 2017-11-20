.class public Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;->a:[B

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;->b:[B

    return-void

    .line 35
    :array_0
    .array-data 1
        0x47t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x4ft
        0x66t
        0x66t
        0x6ct
        0x69t
        0x6et
        0x65t
        0x4ft
        0x54t
        0x50t
    .end array-data

    .line 39
    :array_1
    .array-data 1
        0x54t
        0x48t
        0x4ft
        0x54t
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    return-void
.end method

.method static a(Ljavax/crypto/SecretKey;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_0
    const-string v1, "SHA256"

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 54
    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-object v0

    .line 57
    :cond_0
    sget-object v2, Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;->a:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 58
    sget-object v2, Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;->b:[B

    invoke-static {p0, v1, v2}, Lcom/google/m/b/a/e/a;->a(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v2

    .line 59
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string v2, "AuthZenSecretProviderService"

    const-string v3, "Unexpected exception in key derivation."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 44
    const-string v0, "com.google.android.gms.auth.otp.OTP_SECRET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/authzen/keyservice/a;-><init>(Lcom/google/android/gms/auth/authzen/keyservice/AuthZenSecretProviderService;B)V

    .line 48
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "AuthZenSecretProviderService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method
