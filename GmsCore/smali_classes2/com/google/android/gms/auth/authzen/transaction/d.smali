.class public abstract Lcom/google/android/gms/auth/authzen/transaction/d;
.super Landroid/support/v4/app/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/authzen/transaction/j;


# instance fields
.field protected o:Ljava/lang/String;

.field protected p:Lcom/google/m/b/a/a/p;

.field protected q:Lcom/google/m/b/a/a/q;

.field protected r:Lcom/google/android/gms/auth/authzen/keyservice/g;

.field protected s:J

.field protected t:Z

.field protected u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->u:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    const-string v0, "AuthZen"

    const-string v1, "Prompt canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "authzen"

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 170
    const-string v0, "alarm_send_reply"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    iput-boolean v4, v0, Lcom/google/m/b/a/a/q;->a:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/m/b/a/a/q;->b:J

    .line 173
    const/16 v0, 0x12b

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/d;->b(I)V

    .line 177
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->t:Z

    .line 179
    invoke-virtual {p0, v4}, Lcom/google/android/gms/auth/authzen/transaction/d;->setResult(I)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->finish()V

    .line 181
    return-void
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->t:Z

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "encryption_key_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    invoke-virtual {v2, p1}, Lcom/google/m/b/a/a/q;->a(I)Lcom/google/m/b/a/a/q;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/m/b/a/a/q;->b(J)Lcom/google/m/b/a/a/q;

    new-instance v2, Lcom/google/m/b/a/a/n;

    invoke-direct {v2}, Lcom/google/m/b/a/a/n;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->p:Lcom/google/m/b/a/a/p;

    invoke-virtual {v2, v3}, Lcom/google/m/b/a/a/n;->a(Lcom/google/m/b/a/a/p;)Lcom/google/m/b/a/a/n;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    invoke-virtual {v2, v3}, Lcom/google/m/b/a/a/n;->a(Lcom/google/m/b/a/a/q;)Lcom/google/m/b/a/a/n;

    move-result-object v2

    new-instance v3, Lcom/google/m/b/a/d/t;

    sget-object v4, Lcom/google/m/b/a/d/u;->d:Lcom/google/m/b/a/d/u;

    invoke-virtual {v2}, Lcom/google/m/b/a/a/n;->g()[B

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Ljava/lang/String;[BLcom/google/m/b/a/d/t;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/d;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 202
    :cond_0
    return-void
.end method

.method private static f()Lcom/google/m/b/a/a/q;
    .locals 4

    .prologue
    .line 242
    new-instance v0, Lcom/google/m/b/a/a/q;

    invoke-direct {v0}, Lcom/google/m/b/a/a/q;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/m/b/a/a/q;->a(J)Lcom/google/m/b/a/a/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(II)V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/auth/authzen/transaction/d;->a(IZ)V

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/d;->b(I)V

    .line 210
    return-void
.end method

.method protected final a(IZ)V
    .locals 4

    .prologue
    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->s:J

    sub-long/2addr v0, v2

    .line 235
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    new-instance v3, Lcom/google/m/b/a/a/s;

    invoke-direct {v3}, Lcom/google/m/b/a/a/s;-><init>()V

    invoke-virtual {v3, v0, v1}, Lcom/google/m/b/a/a/s;->a(J)Lcom/google/m/b/a/a/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/m/b/a/a/s;->a(I)Lcom/google/m/b/a/a/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/m/b/a/a/s;->a(Z)Lcom/google/m/b/a/a/s;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/m/b/a/a/q;->a(Lcom/google/m/b/a/a/s;)Lcom/google/m/b/a/a/q;

    .line 239
    return-void
.end method

.method protected final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-boolean v1, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->t:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cancel_prompt"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final e()Lcom/google/m/b/a/a/p;
    .locals 3

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tx_request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/a/p;->a([B)Lcom/google/m/b/a/a/p;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to parse TxRequest"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->r:Lcom/google/android/gms/auth/authzen/keyservice/g;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->r:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->o:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->p:Lcom/google/m/b/a/a/p;

    .line 66
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "creation_elapsed_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->s:J

    iput-boolean v4, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->t:Z

    invoke-static {}, Lcom/google/android/gms/auth/authzen/transaction/d;->f()Lcom/google/m/b/a/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_prompt"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/d;->a(Landroid/content/Intent;)V

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 66
    :cond_2
    const-string v0, "alarm_set"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->u:Z

    const-string v0, "creation_elapsed_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->s:J

    const-string v0, "reply_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->t:Z

    :try_start_0
    const-string v0, "tx_response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/google/m/b/a/a/q;

    invoke-direct {v1}, Lcom/google/m/b/a/a/q;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/q;

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AuthZen"

    const-string v2, "Failed to parse TxResponse"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/auth/authzen/transaction/d;->f()Lcom/google/m/b/a/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->p:Lcom/google/m/b/a/a/p;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1, v4}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;Z)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/j;->onDestroy()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/16 v0, 0x12b

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/d;->b(I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 97
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    const-string v0, "cancel_prompt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/d;->a(Landroid/content/Intent;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/d;->finish()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "creation_elapsed_time"

    iget-wide v2, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->s:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    const-string v0, "alarm_set"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    const-string v0, "reply_sent"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v0, "tx_response"

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/d;->q:Lcom/google/m/b/a/a/q;

    invoke-virtual {v1}, Lcom/google/m/b/a/a/q;->g()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 120
    return-void
.end method
