.class final Lcom/google/android/gms/auth/be/proximity/a;
.super Lcom/google/android/gms/auth/be/proximity/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;


# direct methods
.method public constructor <init>([BLcom/google/android/gms/auth/firstparty/proximity/data/Permit;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/c;-><init>([B)V

    .line 73
    iput-object p2, p0, Lcom/google/android/gms/auth/be/proximity/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/a;->a:[B

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v1, "Error when encrypting/decrypting the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    array-length v1, v0

    add-int/lit8 v1, v1, 0x20

    new-array v1, v1, [B

    .line 91
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/a;->a:[B

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/g/a;->b([B[B)[B
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 101
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 105
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Failed to get permitId in bytes."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
