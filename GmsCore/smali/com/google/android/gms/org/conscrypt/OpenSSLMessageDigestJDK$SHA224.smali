.class public Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;
.source "SourceFile"


# static fields
.field private static final EVP_MD:J

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "sha224"

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    sput-wide v0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;->EVP_MD:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;->SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 115
    sget-wide v0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;->EVP_MD:J

    sget v2, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK$SHA224;->SIZE:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/google/android/gms/org/conscrypt/o;)V

    .line 116
    return-void
.end method
