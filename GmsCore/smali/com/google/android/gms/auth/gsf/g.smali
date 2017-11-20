.class public final Lcom/google/android/gms/auth/gsf/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field static b:Ljava/util/LinkedHashMap;

.field private static final c:Ljava/util/LinkedList;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/Random;


# instance fields
.field private f:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/g;->c:Ljava/util/LinkedList;

    .line 127
    sget-object v0, Lcom/google/android/gms/auth/r;->a:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/auth/gsf/g;->a:Ljava/lang/String;

    .line 134
    const-string v0, "oauth:"

    sput-object v0, Lcom/google/android/gms/auth/gsf/g;->d:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/g;->e:Ljava/util/Random;

    .line 141
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/g;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/g;->f:Landroid/app/Service;

    .line 148
    return-void
.end method

.method static synthetic a(Landroid/accounts/AccountManager;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const-string v0, "com.google"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1054
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[GsfLoginService]  getAuthTokenLabel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    sget-object v1, Lcom/google/android/gms/auth/gsf/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-object v0

    .line 1059
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1061
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1062
    iget v3, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-eqz v3, :cond_2

    .line 1063
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1065
    if-eqz v2, :cond_2

    .line 1066
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1069
    :cond_2
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 1070
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1073
    iget-object v0, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/Random;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/gms/auth/gsf/g;->e:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/gsf/g;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/g;->f:Landroid/app/Service;

    const-string v1, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/app/Service;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "caller pid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lacks com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/gsf/g;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/g;->f:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "caller pid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lacks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    array-length v4, p2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p2, v3

    const-string v5, "youtubelinked"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string v5, "hosted_or_google"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "google"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "legacy_google"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "legacy_hosted_or_google"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "service_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "services"

    invoke-virtual {p0, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v0

    :goto_3
    if-nez v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 151
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/google/android/gms/auth/gsf/h;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/g;->f:Landroid/app/Service;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/gsf/h;-><init>(Lcom/google/android/gms/auth/gsf/g;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/gsf/h;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/gsf/i;

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/g;->f:Landroid/app/Service;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/gsf/i;-><init>(Lcom/google/android/gms/auth/gsf/g;Landroid/content/Context;)V

    goto :goto_0
.end method
