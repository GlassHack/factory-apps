.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$AES$CFB;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$AES;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 557
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$AES;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 558
    return-void
.end method
