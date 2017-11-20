.class final Lcom/google/android/gms/auth/be/proximity/b;
.super Lcom/google/android/gms/auth/be/proximity/d;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

.field private final c:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/d;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/b;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    .line 121
    iput-object p2, p0, Lcom/google/android/gms/auth/be/proximity/b;->c:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 122
    return-void
.end method


# virtual methods
.method public final a([B)Z
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b;->c:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/g/a;->a([B[B)[B
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_0
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b;->a:[B

    .line 141
    array-length v1, v0

    add-int/lit8 v1, v1, -0x20

    new-array v1, v1, [B

    .line 142
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/b;->a:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/b;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
