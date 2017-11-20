.class public Lcom/google/android/gms/auth/authzen/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/security/KeyPair;

.field private final d:Lcom/google/android/gms/auth/authzen/keyservice/g;

.field private final e:Ljava/security/KeyPair;

.field private final f:Landroid/os/PowerManager$WakeLock;

.field private final g:Lcom/google/android/gms/auth/gencode/authzen/server/api/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/security/KeyPair;Lcom/google/android/gms/auth/authzen/keyservice/g;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/google/android/gms/auth/authzen/b/a;->b:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/google/android/gms/auth/authzen/b/a;->c:Ljava/security/KeyPair;

    .line 104
    iput-object p4, p0, Lcom/google/android/gms/auth/authzen/b/a;->d:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 105
    iget-boolean v0, p4, Lcom/google/android/gms/auth/authzen/keyservice/g;->a:Z

    invoke-static {v0}, Lcom/google/m/b/a/d/i;->a(Z)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/b/a;->e:Ljava/security/KeyPair;

    .line 106
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 107
    new-instance v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/g;

    new-instance v2, Lcom/google/android/gms/common/server/g;

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cryptauth/v1/"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/common/server/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/g;-><init>(Lcom/google/android/gms/common/server/g;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/authzen/b/a;->g:Lcom/google/android/gms/auth/gencode/authzen/server/api/g;

    .line 110
    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/auth/authzen/b/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/b/a;->f:Landroid/os/PowerManager$WakeLock;

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/b/a;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 113
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;
    .locals 5

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/gms/common/server/ClientContext;

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    .line 283
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/authzen/keyservice/b;
    .locals 14

    .prologue
    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4, v5, v2, v2}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/b/a;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "oauth2:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/auth/authzen/a/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/auth/be/p;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/auth/be/p;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v5}, Lcom/google/android/gms/auth/be/p;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v10

    .line 117
    if-nez v10, :cond_0

    .line 123
    new-instance v2, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v3, "Failed to get a token for authzen enrollment"

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-nez v2, :cond_1

    .line 129
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 130
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    const-string v4, "com.google.android.gms.gcm.GmsAutoStarter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    new-instance v2, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v3, "Failed to get GCM registeration id"

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/a;->f:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 142
    :try_start_0
    const-string v2, "AuthZen"

    const-string v3, "Starting authzen enrollment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/m/b/a/d/j;->a()Z

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "gcmV1"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;

    invoke-direct {v7}, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;-><init>()V

    const-string v4, "c.g.a.gms"

    iput-object v4, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->b:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->e:Ljava/util/Set;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v3, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->c:Ljava/util/List;

    iget-object v3, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->e:Ljava/util/Set;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-boolean v2, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->d:Z

    iget-object v2, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->e:Ljava/util/Set;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;

    iget-object v3, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->e:Ljava/util/Set;

    iget-object v4, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->a:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->b:Ljava/lang/String;

    iget-object v6, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->c:Ljava/util/List;

    iget-boolean v7, v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/am;->d:Z

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentRequestEntity;

    move-object v6, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/a;->g:Lcom/google/android/gms/auth/gencode/authzen/server/api/g;

    invoke-direct {p0, v10}, Lcom/google/android/gms/auth/authzen/b/a;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v3

    const-string v5, "enrollment/setup"

    iget-object v2, v2, Lcom/google/android/gms/auth/gencode/authzen/server/api/g;->a:Lcom/google/android/gms/common/server/g;

    const/4 v4, 0x1

    const-class v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentResponseEntity;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/gencode/authzen/server/api/SetupEnrollmentResponseEntity;

    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ao;->c()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/gencode/authzen/server/api/aj;

    .line 143
    const-string v3, "AuthZen"

    const-string v4, "Enrollment phase1 complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v11, p0, Lcom/google/android/gms/auth/authzen/b/a;->d:Lcom/google/android/gms/auth/authzen/keyservice/g;

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->e:Ljava/security/KeyPair;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aj;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/m/b/a/d/j;->c([B)Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/m/b/a/d/i;->a(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    const/16 v4, 0xc

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    new-instance v3, Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/b/a;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/auth/authzen/keyservice/c;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;JJ)V

    invoke-static {v3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v11, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Lcom/google/android/gms/auth/authzen/keyservice/c;)Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v8

    .line 152
    const-string v3, "AuthZen"

    const-string v4, "Successfully generated encryption key."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, v8, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v4, v3, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    new-instance v5, Lcom/google/android/gms/auth/authzen/b/c;

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-direct {v5, v3}, Lcom/google/android/gms/auth/authzen/b/c;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/common/b/a;

    iget-object v6, v5, Lcom/google/android/gms/auth/authzen/b/c;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v5, Lcom/google/android/gms/auth/authzen/b/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/authzen/b/c;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    new-instance v9, Lcom/google/m/b/a/d/n;

    invoke-direct {v9}, Lcom/google/m/b/a/d/n;-><init>()V

    const/16 v11, 0x10

    invoke-static {v3, v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/google/m/b/a/d/n;->a(J)Lcom/google/m/b/a/d/n;

    move-result-object v3

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/m/b/a/d/n;->b(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v3

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/m/b/a/d/n;->i(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v3

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/m/b/a/d/n;->f(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v3

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/m/b/a/d/n;->e(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v3

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/m/b/a/d/n;->d(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v3

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v12, v9

    invoke-virtual {v3, v12, v13}, Lcom/google/m/b/a/d/n;->b(J)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->h(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/google/m/b/a/d/n;->g(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v6

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v12, v3

    invoke-virtual {v6, v12, v13}, Lcom/google/m/b/a/d/n;->c(J)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/auth/authzen/b/c;->f()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->a(I)Lcom/google/m/b/a/d/n;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->b(I)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/auth/authzen/b/c;->a()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->a(Z)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/c;->b()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->d(Z)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/c;->c()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->e(Z)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/auth/authzen/b/c;->d()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->b(Z)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/auth/authzen/b/c;->e()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/m/b/a/d/n;->c(Z)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/m/b/a/d/n;->c(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aj;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/auth/authzen/b/a;->d:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v7, "device_key"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/auth/authzen/keyservice/g;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v6

    invoke-static {v4}, Lcom/google/m/b/a/d/i;->a(Ljavax/crypto/SecretKey;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v7

    invoke-virtual {v8}, Lcom/google/android/gms/auth/authzen/keyservice/b;->a()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v9

    invoke-virtual {v3, v5}, Lcom/google/m/b/a/d/n;->e(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/n;

    invoke-virtual {v3, v6}, Lcom/google/m/b/a/d/n;->c(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/n;

    invoke-virtual {v3, v7}, Lcom/google/m/b/a/d/n;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/n;

    invoke-virtual {v3, v10}, Lcom/google/m/b/a/d/n;->j(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/a/a;->a(Ljava/lang/String;)Lcom/google/protobuf/a/a;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/m/b/a/d/n;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/n;

    invoke-virtual {v3, v9}, Lcom/google/m/b/a/d/n;->d(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/n;

    new-instance v5, Lcom/google/android/gms/auth/be/proximity/f;

    iget-object v6, p0, Lcom/google/android/gms/auth/authzen/b/a;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/auth/be/proximity/f;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/google/android/gms/auth/authzen/b/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/be/proximity/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/m/b/a/d/n;->a(Ljava/lang/String;)Lcom/google/m/b/a/d/n;

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/b/a;->c:Ljava/security/KeyPair;

    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/m/b/a/d/i;->a(Lcom/google/m/b/a/d/n;Ljavax/crypto/SecretKey;Ljava/security/PrivateKey;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/b/a;->e:Ljava/security/KeyPair;

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lcom/google/m/b/a/d/j;->b(Ljava/security/PublicKey;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;

    invoke-direct {v5}, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;-><init>()V

    iput-object v4, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->a:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->d:Ljava/util/Set;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v3, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->b:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->d:Ljava/util/Set;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aj;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->c:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->d:Ljava/util/Set;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/a;->g:Lcom/google/android/gms/auth/gencode/authzen/server/api/g;

    invoke-direct {p0, v10}, Lcom/google/android/gms/auth/authzen/b/a;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v3

    new-instance v6, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;

    iget-object v4, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->d:Ljava/util/Set;

    iget-object v7, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->a:Ljava/lang/String;

    iget-object v9, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/auth/gencode/authzen/server/api/o;->c:Ljava/lang/String;

    invoke-direct {v6, v4, v7, v9, v5}, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentRequestEntity;

    const-string v5, "enrollment/finish"

    iget-object v2, v2, Lcom/google/android/gms/auth/gencode/authzen/server/api/g;->a:Lcom/google/android/gms/common/server/g;

    const/4 v4, 0x1

    const-class v7, Lcom/google/android/gms/auth/gencode/authzen/server/api/FinishEnrollmentResponseEntity;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    .line 157
    const-string v2, "AuthZen"

    const-string v3, "Enrollment phase2 complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 163
    const/4 v4, 0x2

    sget-object v2, Lcom/google/android/gms/auth/b/a;->V:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 164
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 166
    const-string v4, "AuthZen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Increasing encryption key\'s expiration time to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/google/android/gms/auth/authzen/b/a;->d:Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/auth/authzen/keyservice/g;->b:Lcom/google/android/gms/auth/authzen/keyservice/j;

    invoke-virtual {v4, v8, v2, v3}, Lcom/google/android/gms/auth/authzen/keyservice/j;->a(Lcom/google/android/gms/auth/authzen/keyservice/b;J)Z
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/b/a;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-object v8

    .line 169
    :catch_0
    move-exception v2

    .line 170
    :try_start_1
    new-instance v3, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v4, "Key is not valid"

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/b/a;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 171
    :catch_1
    move-exception v2

    .line 172
    :try_start_2
    new-instance v3, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v4, "KeySpec is not valid"

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 173
    :catch_2
    move-exception v2

    .line 174
    new-instance v3, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v4, "Failed to fetch an auth token"

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 175
    :catch_3
    move-exception v2

    .line 176
    new-instance v3, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v4, "Error while talking to apiary"

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 177
    :catch_4
    move-exception v2

    .line 178
    new-instance v3, Lcom/google/android/gms/auth/authzen/b/b;

    const-string v4, "Encryption algorithm not found"

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/auth/authzen/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
