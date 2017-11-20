.class final Lcom/google/android/gms/analytics/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/q;


# static fields
.field private static e:Lcom/google/android/gms/analytics/j;

.field private static f:Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/j;->f:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/j;->d:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/analytics/j;->b:Ljava/lang/String;

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error retrieving package info: appName set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Lcom/google/android/gms/analytics/j;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gms/analytics/j;->e:Lcom/google/android/gms/analytics/j;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lcom/google/android/gms/analytics/j;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/j;->e:Lcom/google/android/gms/analytics/j;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/gms/analytics/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/j;->e:Lcom/google/android/gms/analytics/j;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v1, "&an"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "&av"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_3
    const-string v1, "&aid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_4
    const-string v1, "&aiid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->d:Ljava/lang/String;

    goto :goto_0
.end method
