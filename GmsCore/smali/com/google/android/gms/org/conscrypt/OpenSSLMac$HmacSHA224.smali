.class public Lcom/google/android/gms/org/conscrypt/OpenSSLMac$HmacSHA224;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLMac;
.source "SourceFile"


# static fields
.field private static final EVP_MD:J

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "sha224"

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    .line 150
    sput-wide v0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac$HmacSHA224;->EVP_MD:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac$HmacSHA224;->SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 153
    sget-wide v2, Lcom/google/android/gms/org/conscrypt/OpenSSLMac$HmacSHA224;->EVP_MD:J

    sget v4, Lcom/google/android/gms/org/conscrypt/OpenSSLMac$HmacSHA224;->SIZE:I

    const/16 v5, 0x357

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;-><init>(JIILcom/google/android/gms/org/conscrypt/n;)V

    .line 154
    return-void
.end method
