.class public Lcom/google/android/gms/org/conscrypt/X509PublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x777d6c0a72acebaaL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->encoded:[B

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    check-cast p1, Lcom/google/android/gms/org/conscrypt/X509PublicKey;

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 78
    iget-object v2, p1, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 81
    goto :goto_0

    .line 82
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->encoded:[B

    iget-object v3, p1, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->encoded:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X509PublicKey [algorithm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
