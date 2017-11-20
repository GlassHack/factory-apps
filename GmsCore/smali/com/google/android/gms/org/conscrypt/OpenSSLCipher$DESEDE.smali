.class public Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;
.source "SourceFile"


# static fields
.field private static DES_BLOCK_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 648
    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;->DES_BLOCK_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 652
    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 2

    .prologue
    .line 725
    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    .line 726
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key size must be 128 or 192 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    return-void
.end method

.method protected checkSupportedMode(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 3

    .prologue
    .line 732
    sget-object v0, Lcom/google/android/gms/org/conscrypt/i;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 741
    :pswitch_0
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

    .line 739
    :pswitch_1
    return-void

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected checkSupportedPadding(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 3

    .prologue
    .line 747
    sget-object v0, Lcom/google/android/gms/org/conscrypt/i;->b:[I

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 752
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

    .line 750
    :pswitch_0
    return-void

    .line 747
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
    .line 704
    const-string v0, "DESede"

    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    .prologue
    .line 758
    sget v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$DESEDE;->DES_BLOCK_SIZE:I

    return v0
.end method

.method protected getCipherName(ILcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 710
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 711
    const-string v0, "des-ede"

    .line 716
    :goto_0
    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    if-ne p2, v1, :cond_1

    .line 719
    :goto_1
    return-object v0

    .line 713
    :cond_0
    const-string v0, "des-ede3"

    goto :goto_0

    .line 719
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    goto :goto_1
.end method
