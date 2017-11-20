.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC$PKCS5Padding;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 668
    return-void
.end method
