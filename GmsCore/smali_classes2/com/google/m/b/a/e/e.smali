.class public abstract Lcom/google/m/b/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/google/m/b/a/e/e;->a:Ljava/math/BigInteger;

    .line 532
    iput-object p2, p0, Lcom/google/m/b/a/e/e;->b:Ljavax/crypto/spec/DHParameterSpec;

    .line 533
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/m/b/a/e/e;->b:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/m/b/a/e/e;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/m/b/a/e/e;->a:Ljava/math/BigInteger;

    return-object v0
.end method
