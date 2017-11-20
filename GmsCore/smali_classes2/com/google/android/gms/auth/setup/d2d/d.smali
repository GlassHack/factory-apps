.class final Lcom/google/android/gms/auth/setup/d2d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/setup/d2d/a/g;


# instance fields
.field private final a:Lcom/google/android/gms/auth/setup/d2d/f;

.field private b:Lcom/google/m/b/a/d/g;

.field private c:Lcom/google/m/b/a/d/h;

.field private d:Lcom/google/android/gms/auth/setup/d2d/a/b;

.field private e:Lcom/google/android/gms/auth/setup/d2d/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/setup/d2d/f;Lcom/google/m/b/a/d/g;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/f;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->a:Lcom/google/android/gms/auth/setup/d2d/f;

    .line 126
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/g;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->b:Lcom/google/m/b/a/d/g;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/setup/d2d/f;Lcom/google/m/b/a/d/h;Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/android/gms/auth/setup/d2d/c;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/f;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->a:Lcom/google/android/gms/auth/setup/d2d/f;

    .line 135
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/h;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->c:Lcom/google/m/b/a/d/h;

    .line 136
    invoke-static {p3}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/a/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->d:Lcom/google/android/gms/auth/setup/d2d/a/b;

    .line 137
    invoke-static {p4}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->e:Lcom/google/android/gms/auth/setup/d2d/c;

    .line 138
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->a:Lcom/google/android/gms/auth/setup/d2d/f;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/f;->a()V

    .line 174
    return-void
.end method

.method public final a([B)V
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->c:Lcom/google/m/b/a/d/h;

    if-eqz v0, :cond_1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->c:Lcom/google/m/b/a/d/h;

    iget-object v1, v0, Lcom/google/m/b/a/d/h;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/m/b/a/d/a;->a(Ljava/security/PrivateKey;[B)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/m/b/a/d/a;->a(Ljavax/crypto/SecretKey;[B)Lcom/google/m/b/a/d/c;

    move-result-object v2

    new-instance v3, Lcom/google/m/b/a/d/g;

    iget-object v4, v2, Lcom/google/m/b/a/d/c;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v4}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/m/b/a/d/g;-><init>(Lcom/google/m/b/a/d/h;Ljavax/crypto/SecretKey;[BB)V

    iget v0, v2, Lcom/google/m/b/a/d/c;->b:I

    invoke-virtual {v3, v0}, Lcom/google/m/b/a/d/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Incorrect sequence number"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_1
    iput-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/d;->b:Lcom/google/m/b/a/d/g;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->c:Lcom/google/m/b/a/d/h;

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->e:Lcom/google/android/gms/auth/setup/d2d/c;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/e;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/d;->d:Lcom/google/android/gms/auth/setup/d2d/a/b;

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/d;->b:Lcom/google/m/b/a/d/g;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/setup/d2d/e;-><init>(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/g;B)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/c;->a(Lcom/google/android/gms/auth/setup/d2d/g;)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->b:Lcom/google/m/b/a/d/g;

    iget-object v0, v0, Lcom/google/m/b/a/d/g;->a:[B

    .line 163
    :goto_1
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    .line 165
    :try_start_2
    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->a:Lcom/google/android/gms/auth/setup/d2d/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/f;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_2
    .catch Lcom/google/protobuf/nano/i; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/d;->b:Lcom/google/m/b/a/d/g;

    invoke-virtual {v0, p1}, Lcom/google/m/b/a/d/g;->b([B)[B
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    .line 157
    :catch_2
    move-exception v0

    .line 158
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
