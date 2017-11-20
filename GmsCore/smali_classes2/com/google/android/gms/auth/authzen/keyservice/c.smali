.class public final Lcom/google/android/gms/auth/authzen/keyservice/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljavax/crypto/SecretKey;

.field final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/SecretKey;JJ)V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "account cannot be empty or null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    const-string v0, "MasterKey cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    cmp-long v0, p5, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "expiration time must be greater than creation time"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    .line 37
    iput-wide p3, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->c:J

    .line 38
    iput-wide p5, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->d:J

    .line 39
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Account: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Creation Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Expiration Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/auth/authzen/keyservice/c;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
