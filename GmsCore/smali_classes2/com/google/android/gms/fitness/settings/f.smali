.class public final Lcom/google/android/gms/fitness/settings/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/fitness/settings/f;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 43
    new-instance v0, Lcom/google/android/gms/fitness/settings/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/settings/i;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/settings/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/settings/i;->a:Ljava/lang/String;

    .line 45
    new-instance v1, Lcom/google/android/gms/fitness/settings/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/settings/h;-><init>()V

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/settings/h;->a(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/settings/j;

    iget-object v0, v0, Lcom/google/android/gms/fitness/settings/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/settings/k;

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v1, v0, Lcom/google/android/gms/fitness/settings/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 51
    invoke-static {v1}, Lcom/google/android/gms/fitness/c;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v8, v1, [I

    move v2, v3

    .line 59
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 60
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v8, v2

    .line 59
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 63
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/fitness/settings/k;->g:Ljava/util/List;

    if-nez v1, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    const-string v2, "Connected app: %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v3

    invoke-static {v2, v9}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    :goto_4
    if-nez v2, :cond_5

    .line 74
    iget-object v2, v0, Lcom/google/android/gms/fitness/settings/k;->c:Ljava/lang/String;

    .line 78
    :goto_5
    new-instance v9, Lcom/google/android/gms/fitness/settings/ConnectedApp;

    iget-object v10, v0, Lcom/google/android/gms/fitness/settings/k;->a:Ljava/lang/String;

    invoke-direct {v9, v2, v1, v10, v8}, Lcom/google/android/gms/fitness/settings/ConnectedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/fitness/settings/k;->g:Ljava/util/List;

    goto :goto_2

    .line 69
    :catch_0
    move-exception v2

    const-string v2, "Name not found for %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v3

    invoke-static {v2, v9}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    const/4 v2, 0x0

    goto :goto_4

    .line 76
    :cond_5
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 82
    :cond_6
    return-object v5
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    const-string v1, "Querying Auth2 token for %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/settings/f;->a:Landroid/content/Context;

    const-string v2, "oauth2:https://www.googleapis.com/auth/grants.audit"

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/af; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 146
    const-string v1, "token = %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    const-string v2, "UserRecoverableAuthException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    .line 140
    const-string v2, "UserRecoverableAuthException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 142
    :catch_2
    move-exception v1

    .line 143
    const-string v2, "UserRecoverableAuthException: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
