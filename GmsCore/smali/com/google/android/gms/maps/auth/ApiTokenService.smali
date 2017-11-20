.class public final Lcom/google/android/gms/maps/auth/ApiTokenService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/b/o;

.field private final b:Lcom/google/android/gms/maps/auth/c;

.field private final c:Lcom/google/android/gms/maps/auth/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/maps/auth/ApiTokenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/maps/auth/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/auth/c;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/auth/ApiTokenService;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/android/gms/maps/auth/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/android/gms/maps/auth/c;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/gms/maps/auth/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/auth/a;-><init>(Lcom/google/android/gms/maps/auth/ApiTokenService;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->c:Lcom/google/android/gms/maps/auth/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->a:Lcom/google/maps/api/android/lib6/b/o;

    iput-object p2, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->b:Lcom/google/android/gms/maps/auth/c;

    return-void
.end method

.method private static a(S)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "ERROR_CODE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object v0
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->a:Lcom/google/maps/api/android/lib6/b/o;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/e;->a(Landroid/content/Context;)Lcom/google/maps/api/android/lib6/b/e;

    sget v4, Lcom/google/android/gms/common/k;->a:I

    new-instance v5, Lcom/google/maps/api/android/lib6/b/i;

    invoke-direct {v5}, Lcom/google/maps/api/android/lib6/b/i;-><init>()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/b/i;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v5

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/b/i;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/maps/api/android/lib6/b/i;->c(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/b/i;->b()Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v4

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/b/i;->d(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/b/i;->e(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/i;->c()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/maps/auth/b;

    invoke-direct {v3}, Lcom/google/android/gms/maps/auth/b;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->k()V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->a:Lcom/google/maps/api/android/lib6/b/o;

    :cond_1
    const-string v0, "PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->b:Lcom/google/android/gms/maps/auth/c;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/google/android/gms/maps/auth/ApiTokenService;->a(S)Landroid/os/Bundle;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->b:Lcom/google/android/gms/maps/auth/c;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->a(S)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "API_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v7}, Lcom/google/android/gms/maps/auth/ApiTokenService;->a(S)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/c/a;

    invoke-direct {v2, v1, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->a:Lcom/google/maps/api/android/lib6/b/o;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/a;->a(Lcom/google/maps/api/android/lib6/b/o;)Lcom/google/maps/api/android/lib6/gmm6/c/b;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->a(S)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/c/b;->a:Z

    if-nez v1, :cond_8

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/maps/auth/ApiTokenService;->a(S)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/c/b;->b:Ljava/lang/String;

    iget-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/c/b;->c:J

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/c/b;->d:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v7}, Landroid/os/Bundle;-><init>(I)V

    const-string v6, "API_TOKEN"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXPIRY_TIME"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "VALIDITY_DURATION"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/auth/ApiTokenService;->c:Lcom/google/android/gms/maps/auth/e;

    return-object v0
.end method
