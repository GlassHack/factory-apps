.class public final Lcom/google/android/gms/auth/be/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/b/c;


# instance fields
.field private final a:Lcom/google/android/gms/auth/be/b/e;

.field private final b:Lcom/google/android/gms/auth/be/b/b;

.field private final c:Lcom/google/m/b/a/b/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/be/b/e;Lcom/google/android/gms/auth/be/b/b;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/m/b/a/b/d;

    invoke-direct {v0}, Lcom/google/m/b/a/b/d;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/auth/be/b/h;-><init>(Lcom/google/android/gms/auth/be/b/e;Lcom/google/android/gms/auth/be/b/b;Lcom/google/m/b/a/b/f;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/be/b/e;Lcom/google/android/gms/auth/be/b/b;Lcom/google/m/b/a/b/f;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/auth/be/b/h;->a:Lcom/google/android/gms/auth/be/b/e;

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/auth/be/b/h;->b:Lcom/google/android/gms/auth/be/b/b;

    .line 53
    iput-object p3, p0, Lcom/google/android/gms/auth/be/b/h;->c:Lcom/google/m/b/a/b/f;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/be/b/h;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/auth/be/b/h;->a:Lcom/google/android/gms/auth/be/b/e;

    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/be/b/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b/d;

    move-result-object v1

    .line 64
    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/auth/be/b/h;->b:Lcom/google/android/gms/auth/be/b/b;

    invoke-interface {v2, v1}, Lcom/google/android/gms/auth/be/b/b;->a(Lcom/google/android/gms/auth/be/b/d;)Ljava/lang/Long;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 71
    const-string v3, "HMACSHA256"

    invoke-static {v3}, Lcom/google/android/gms/common/util/e;->b(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 73
    if-eqz v3, :cond_0

    .line 76
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/b/d;->b:[B

    const-string v5, "HMACSHA256"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 78
    :try_start_0
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    new-instance v0, Lcom/google/m/b/a/b/a;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/b/h;->c:Lcom/google/m/b/a/b/f;

    invoke-direct {v0, v3, v1}, Lcom/google/m/b/a/b/a;-><init>(Ljavax/crypto/Mac;Lcom/google/m/b/a/b/f;)V

    .line 85
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p2}, Lcom/google/m/b/a/b/a;->a(J[B)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "%02d%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    rem-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method
