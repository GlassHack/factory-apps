.class public final Lcom/google/android/gms/pseudonymous/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/pseudonymous/service/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/pseudonymous/a/a;

.field private c:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/android/gms/pseudonymous/service/c;->a:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/google/android/gms/pseudonymous/service/c;->b:Lcom/google/android/gms/pseudonymous/a/a;

    .line 119
    iput-object p3, p0, Lcom/google/android/gms/pseudonymous/service/c;->c:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 120
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 124
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 125
    const-string v1, "PseudonymousIdIntentService"

    monitor-enter v1

    .line 126
    :try_start_0
    const-string v2, "PseudonymousIdIntentService"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/google/android/gms/pseudonymous/service/c;->c:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-virtual {v3}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "pseudonymousId"

    iget-object v4, p0, Lcom/google/android/gms/pseudonymous/service/c;->c:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-virtual {v4}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    .line 146
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/pseudonymous/service/c;->b:Lcom/google/android/gms/pseudonymous/a/a;

    if-nez v1, :cond_3

    .line 155
    :goto_1
    return-void

    .line 135
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/pseudonymous/service/c;->c:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-static {v2}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :cond_1
    :try_start_2
    const-string v3, "pseudonymousId"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    .line 143
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/pseudonymous/service/c;->b:Lcom/google/android/gms/pseudonymous/a/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/pseudonymous/a/a;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "PseudonymousIdIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to invoke callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
