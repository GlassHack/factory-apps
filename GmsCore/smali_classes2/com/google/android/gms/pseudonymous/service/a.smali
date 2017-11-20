.class public final Lcom/google/android/gms/pseudonymous/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/pseudonymous/service/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/pseudonymous/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/android/gms/pseudonymous/service/a;->a:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/google/android/gms/pseudonymous/service/a;->b:Lcom/google/android/gms/pseudonymous/a/a;

    .line 165
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v0, "PseudonymousIdIntentService"

    const-string v1, "getToken invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 172
    const-string v3, "PseudonymousIdIntentService"

    monitor-enter v3

    .line 173
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    move-result-object v1

    .line 187
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/pseudonymous/service/a;->b:Lcom/google/android/gms/pseudonymous/a/a;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/pseudonymous/a/a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    return-void

    .line 176
    :cond_0
    :try_start_2
    const-string v1, "PseudonymousIdIntentService"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 179
    :try_start_3
    new-instance v1, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    const-string v5, "pseudonymousId"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :try_start_4
    invoke-static {v1}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :goto_2
    :try_start_5
    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    .line 184
    const-string v4, "PseudonymousIdIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error reading store: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    const-string v1, "PseudonymousIdIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to invoke callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
