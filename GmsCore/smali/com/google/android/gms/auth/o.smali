.class public final Lcom/google/android/gms/auth/o;
.super Lcom/google/android/c/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/GetToken;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/GetToken;)V
    .locals 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/gms/auth/o;->a:Lcom/google/android/gms/auth/GetToken;

    invoke-direct {p0}, Lcom/google/android/c/b;-><init>()V

    .line 63
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/o;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;->a()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;->a()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    const-string v2, "booleanResult"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;->a()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 93
    :try_start_0
    new-instance v6, Lcom/google/android/gms/auth/d/d;

    iget-object v0, p0, Lcom/google/android/gms/auth/o;->a:Lcom/google/android/gms/auth/GetToken;

    invoke-direct {v6, v0}, Lcom/google/android/gms/auth/d/d;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 100
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 101
    new-instance v7, Lcom/google/android/gms/auth/a/c;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 102
    if-nez p3, :cond_4

    .line 103
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 105
    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/ae;

    invoke-direct {v0, v7}, Lcom/google/android/gms/auth/ae;-><init>(Lcom/google/android/gms/auth/a/c;)V

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    sget-object v1, Lcom/google/android/gms/auth/r;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    invoke-virtual {v7, v3}, Lcom/google/android/gms/auth/a/c;->a(Ljava/lang/String;)I

    move-result v1

    :cond_0
    invoke-static {v2, v3, v1, v7}, Lcom/google/android/gms/auth/a/a;->a(ILjava/lang/String;ILcom/google/android/gms/auth/a/c;)Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v1

    .line 107
    const-string v2, "accountManagerResponse"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountAuthenticatorResponse;

    move-object v3, p1

    move-object v4, p2

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/ae;->a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 116
    if-nez v1, :cond_1

    .line 117
    const-string v0, "token result is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/o;->b:Z

    if-eqz v3, :cond_1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/GetToken;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 122
    sub-long v8, v10, v8

    iput-wide v8, v6, Lcom/google/android/gms/auth/d/d;->d:J

    .line 123
    const-string v0, "handle_notification"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/gms/auth/d/d;->e:Z

    .line 125
    const-string v0, "callback_intent"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v6, Lcom/google/android/gms/auth/d/d;->f:Z

    .line 126
    const-string v0, "sync_extras"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v6, Lcom/google/android/gms/auth/d/d;->g:Z

    .line 127
    const-string v0, "TokenCache"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/gms/auth/d/d;->h:Z

    .line 128
    invoke-virtual {v6, v2}, Lcom/google/android/gms/auth/d/d;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6, p2}, Lcom/google/android/gms/auth/d/d;->b(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v7, v2}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/auth/d/d;->c(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Lcom/google/android/gms/auth/d/d;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-object v1

    .line 125
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 126
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/GetToken;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - getToken exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    throw v0

    :cond_4
    move-object v5, p3

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object v0

    return-object v0
.end method
