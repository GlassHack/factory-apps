.class public Lcom/google/android/gms/auth/be/proximity/registration/v1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/android/gms/auth/be/proximity/b/c;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->c:Lcom/google/android/gms/auth/be/proximity/b/c;

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->d:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/registration/v1/a;
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->a:Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->a:Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

    .line 37
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->a:Lcom/google/android/gms/auth/be/proximity/registration/v1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    .locals 5

    .prologue
    .line 143
    const-string v0, "permit://google.com/easyunlock/v1/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/auth/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->c:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    :try_end_0
    .catch Lcom/google/android/gms/auth/be/proximity/b/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 156
    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    new-instance v2, Lcom/google/android/gms/common/b/a;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AES"

    invoke-static {}, Lcom/google/android/gms/auth/g/a;->a()[B

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;-><init>()V

    iput-object v1, v2, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a:Ljava/lang/String;

    iput-object p1, v2, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->b:Ljava/lang/String;

    const-string v1, "unlock"

    iput-object v1, v2, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->d:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a()Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;Lcom/google/android/gms/auth/be/proximity/registration/v1/d;Lcom/google/android/gms/auth/be/proximity/registration/v1/e;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 71
    array-length v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 73
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->e()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/auth/g/a;->b([B[B)[B
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    new-instance v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p3, v2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a(Lcom/google/android/gms/auth/be/proximity/registration/v1/f;)V

    .line 87
    invoke-virtual {p2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->a()Lcom/google/android/gms/auth/be/proximity/registration/v1/b;

    move-result-object v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v1, "Didn\'t receive incoming message from connection as expected."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->b:Ljava/lang/String;

    const-string v2, "Received invalid permitId: %s."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;->a:Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->b:Ljava/lang/String;

    const-string v2, "Received invalid permitAccessId: %s."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;->b:Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    :try_start_1
    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/b;->c:[B

    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/auth/g/a;->a([B[B)[B
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->b:Ljava/lang/String;

    const-string v1, "Received invalid message: invalid data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_3
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->b:Ljava/lang/String;

    const-string v2, "Message authorized, saving permit to storage."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AES"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->d()[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;)V

    .line 132
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->c:Lcom/google/android/gms/auth/be/proximity/b/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;)Z
    :try_end_2
    .catch Lcom/google/android/gms/auth/be/proximity/b/e; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 133
    :catch_2
    move-exception v0

    .line 134
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->b:Ljava/lang/String;

    const-string v2, "Failed to save the permit."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
