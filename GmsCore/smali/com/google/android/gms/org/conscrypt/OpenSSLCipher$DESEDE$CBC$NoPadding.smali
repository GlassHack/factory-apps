.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC$NoPadding;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 661
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 662
    return-void
.end method
