.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE$CBC;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1

    .prologue
    .line 656
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 657
    return-void
.end method
