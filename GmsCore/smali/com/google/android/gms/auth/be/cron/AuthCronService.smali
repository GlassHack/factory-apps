.class public Lcom/google/android/gms/auth/be/cron/AuthCronService;
.super Lcom/google/android/gms/gcm/ae;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/be/cron/AuthCronService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/cron/AuthCronService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/gcm/be;)I
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 28
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 36
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 37
    new-instance v1, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v4

    .line 40
    array-length v5, v3

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 42
    new-instance v7, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    invoke-direct {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->l()Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j()Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v7

    const-string v8, "ac2dm"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v7

    iget-object v8, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;

    move-result-object v7

    .line 48
    invoke-virtual {v2, v7}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v7

    .line 49
    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v8

    .line 50
    sget-object v9, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 51
    const-string v7, "GLSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/google/android/gms/auth/be/cron/AuthCronService;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Successfully performed schedueled work for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "GLSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/google/android/gms/auth/be/cron/AuthCronService;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  while performing schedueled work for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Rescheduling."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    .line 61
    sget-object v6, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    :cond_2
    return v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0}, Lcom/google/android/gms/auth/k;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method
