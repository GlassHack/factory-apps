.class public Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/authorization/c;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

.field b:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;

.field private final f:Ljava/lang/Object;

.field private final g:Lcom/google/android/gms/auth/be/proximity/a/c;

.field private final h:Lcom/google/android/gms/auth/be/proximity/authorization/j;

.field private final i:Lcom/google/m/b/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;)V
    .locals 6

    .prologue
    .line 112
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/j;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/auth/b/a;->A:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/google/m/b/a/c/a;

    invoke-direct {v4}, Lcom/google/m/b/a/c/a;-><init>()V

    :goto_0
    new-instance v5, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;

    invoke-direct {v5, p1, p2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;Lcom/google/android/gms/auth/be/proximity/authorization/j;Lcom/google/m/b/a/c/a;Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;)V

    .line 117
    return-void

    .line 112
    :cond_0
    new-instance v4, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;

    invoke-direct {v4}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;Lcom/google/android/gms/auth/be/proximity/authorization/j;Lcom/google/m/b/a/c/a;Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->d:Landroid/content/Context;

    .line 131
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/a/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->g:Lcom/google/android/gms/auth/be/proximity/a/c;

    .line 132
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/j;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->h:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    .line 133
    invoke-static {p4}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/c/a;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    .line 134
    invoke-static {p5}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->f:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;[B)Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/m/b/a/c/a;->a([BLjava/util/List;[B)I

    move-result v0

    .line 282
    if-gez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Error when initializing the secure channel."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :catch_1
    move-exception v0

    .line 290
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Error when initializing the secure channel."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 242
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/g;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    const-string v1, "device_key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 250
    const-string v4, "AUTHZEN_PUBLIC_KEY"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/m;->a([B)Lcom/google/m/b/a/e/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/e/d;->a(Lcom/google/m/b/a/e/m;)Ljava/security/PublicKey;

    move-result-object v0

    .line 254
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/m/b/a/d/i;->a(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Error when creating symmetric key."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :catch_1
    move-exception v0

    .line 245
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Failed to get AuthZen key."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 260
    :catch_2
    move-exception v0

    .line 261
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Error when creating symmetric key."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 266
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->c:Ljava/lang/String;

    const-string v1, "Sending status update..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-virtual {v0}, Lcom/google/m/b/a/c/a;->a()Lcom/google/m/b/a/c/b;

    move-result-object v0

    sget-object v2, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    if-eq v0, v2, :cond_0

    .line 176
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->c:Ljava/lang/String;

    const-string v2, "No need to send status update message when secure channel is not ready."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    monitor-exit v1

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Permit should not be null when secure channel is established."

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 186
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->a(Lcom/google/m/b/a/c/a;)V

    .line 187
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/d;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 193
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v1, "Received unexpected message: %s."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;

    .line 200
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/b;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-virtual {v2}, Lcom/google/m/b/a/c/a;->a()Lcom/google/m/b/a/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/m/b/a/c/b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 228
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Secure channel is in wrong state."

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 202
    :pswitch_0
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;->b:Ljava/lang/String;

    .line 203
    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Missing mandatory permit Id."

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/proximity/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/c;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/proximity/b/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Cannot get permit with permitId %s from database."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;->a:[B

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;[B)Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->g:Lcom/google/android/gms/auth/be/proximity/a/c;

    new-instance v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-virtual {v3}, Lcom/google/m/b/a/c/a;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;-><init>([B)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/auth/be/proximity/a/c;->a(Ljava/lang/Object;)V

    .line 232
    :goto_0
    monitor-exit v1

    return-void

    .line 221
    :pswitch_1
    iget-object v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;->a:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-virtual {v2, v0}, Lcom/google/m/b/a/c/a;->a([B)[B
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->a(Lcom/google/m/b/a/c/a;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v3, "Error when finishing initialization of the secure channel."

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->i:Lcom/google/m/b/a/c/a;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/f;->a:[B

    invoke-virtual {v0, v2}, Lcom/google/m/b/a/c/a;->b([B)[B
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->c:Ljava/lang/String;

    const-string v3, "Handling status update incoming message..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->h:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->b()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exception when handling the message."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Error when decoding the message."

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :pswitch_4
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->h:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a()V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Received unexpected type of message: %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 227
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->c:Ljava/lang/String;

    const-string v1, "Processing permit update..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    if-nez v0, :cond_0

    .line 147
    monitor-exit v1

    .line 161
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->a:Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    monitor-exit v1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 153
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Exception in authorization since the data has been changed."

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    monitor-exit v1

    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Exception in authorization since the data has been changed."

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
