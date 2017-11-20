.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$ECB$NoPadding;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$ECB;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 685
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$ECB;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 686
    return-void
.end method
