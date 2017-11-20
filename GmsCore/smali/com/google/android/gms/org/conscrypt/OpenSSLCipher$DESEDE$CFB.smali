.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CFB;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 674
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 675
    return-void
.end method
