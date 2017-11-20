.class public final Lcom/google/android/gms/auth/authzen/keyservice/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/auth/authzen/keyservice/c;

.field private final b:[B


# direct methods
.method constructor <init>([BLcom/google/android/gms/auth/authzen/keyservice/c;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "Handle cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "EncryptionKeyData cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/keyservice/b;->b:[B

    .line 77
    iput-object p2, p0, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/keyservice/b;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Handle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/keyservice/b;->b:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/authzen/keyservice/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
