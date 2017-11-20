.class final Lcom/google/android/gms/fitness/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/f/g;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static b(Lcom/google/android/gms/common/server/ClientContext;)Lcom/google/android/gms/fitness/f/f;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/google/android/gms/fitness/f/f;

    const-string v1, "com.google.android.gms.fitness.auth.token"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/ClientContext;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/f/f;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/common/server/ClientContext;)Z
    .locals 6

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/android/gms/fitness/f/g;->d(Lcom/google/android/gms/common/server/ClientContext;)J

    move-result-wide v2

    .line 137
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->A:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Lcom/google/android/gms/common/server/ClientContext;)J
    .locals 2

    .prologue
    .line 145
    const-string v0, "com.google.android.gms.fitness.auth.time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/ClientContext;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    const-string v1, "Invalid app."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 108
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    const-string v1, "Invalid app Uid for: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/server/ClientContext;)V
    .locals 3

    .prologue
    .line 63
    const-string v0, "Clearing client context: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/fitness/f/g;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/server/ClientContext;->b(Landroid/content/Context;)V

    .line 65
    return-void
.end method
