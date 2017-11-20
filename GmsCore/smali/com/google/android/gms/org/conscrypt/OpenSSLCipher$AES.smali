.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$AES;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;
.source "SourceFile"


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 535
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 3

    .prologue
    .line 593
    sparse-switch p1, :sswitch_data_0

    .line 599
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported key size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :sswitch_0
    return-void

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected checkSupportedMode(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 3

    .prologue
    .line 605
    sget-object v0, Lcom/google/android/gms/org/conscrypt/i;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 616
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :pswitch_0
    return-void

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected checkSupportedPadding(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 3

    .prologue
    .line 622
    sget-object v0, Lcom/google/android/gms/org/conscrypt/i;->b:[I

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 627
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported padding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :pswitch_0
    return-void

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getBaseCipherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    const-string v0, "AES"

    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    .prologue
    .line 643
    const/16 v0, 0x10

    return v0
.end method

.method protected getCipherName(ILcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aes-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
