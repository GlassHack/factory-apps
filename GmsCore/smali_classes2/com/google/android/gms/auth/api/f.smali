.class final Lcom/google/android/gms/auth/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/e;


# instance fields
.field protected a:Lcom/android/d/s;

.field private b:Lcom/google/android/gms/auth/api/r;

.field private c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/r;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/gms/auth/api/f;->b:Lcom/google/android/gms/auth/api/r;

    .line 253
    iput-object p2, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    .line 254
    sget-object v0, Lcom/google/android/gms/common/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 256
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/app/GmsApplication;->a(Z)Lcom/android/d/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/f;->a:Lcom/android/d/s;

    .line 258
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    if-eqz p4, :cond_0

    .line 293
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    :try_start_0
    invoke-static {p1, v0, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/f;->b:Lcom/google/android/gms/auth/api/r;

    invoke-interface {v1, p2, p3, v0}, Lcom/google/android/gms/auth/api/r;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/16 v10, 0xbbc

    const/16 v7, 0xbb8

    const/4 v9, 0x0

    .line 263
    :try_start_0
    const-string v0, "GoogleAuthApiIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/api/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/k;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/k;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)Lcom/google/android/gms/auth/api/p;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/auth/api/p;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/auth/api/k;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/auth/api/p;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/google/android/gms/auth/api/h;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/h;-><init>()V

    new-instance v0, Lcom/google/android/gms/auth/api/a;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i()Ljava/util/Map;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/gms/auth/api/f;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->j()[B

    move-result-object v6

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/a;-><init>(ILjava/lang/String;Lcom/android/d/v;Lcom/android/d/u;Ljava/util/Map;[B)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/f;->a:Lcom/android/d/s;

    invoke-virtual {v1, v0}, Lcom/android/d/s;->a(Lcom/android/d/p;)Lcom/android/d/p;
    :try_end_0
    .catch Lcom/google/android/gms/auth/af; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/api/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/auth/api/q; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v0, v3, Lcom/google/android/gms/auth/api/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/auth/af; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/auth/api/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/google/android/gms/auth/api/q; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    iget-object v0, v3, Lcom/google/android/gms/auth/api/h;->b:Lcom/android/d/aa;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/google/android/gms/auth/api/h;->c:Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    .line 265
    const-string v1, "GoogleAuthApiIntentService"

    const-string v2, "Executing send connection operation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/google/android/gms/auth/api/f;->b:Lcom/google/android/gms/auth/api/r;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/api/r;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;)V

    .line 287
    :goto_3
    return-void

    .line 263
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/q;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/p;->c:Lcom/google/android/gms/auth/api/k;

    const-string v2, "Bad HTTP Method!"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/auth/af; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/auth/api/d; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/auth/api/q; {:try_start_2 .. :try_end_2} :catch_5

    .line 267
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "GoogleAuthApiIntentService"

    const-string v2, "Token error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Lcom/google/android/gms/auth/af;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/af;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v10, v1, v0}, Lcom/google/android/gms/auth/api/f;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 263
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Lcom/google/android/gms/auth/af; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gms/auth/api/d; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/google/android/gms/auth/api/q; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 272
    :catch_2
    move-exception v0

    .line 274
    const-string v1, "GoogleAuthApiIntentService"

    const-string v2, "Token error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v10, v0, v9}, Lcom/google/android/gms/auth/api/f;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :try_start_4
    new-instance v1, Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/auth/api/h;->b:Lcom/android/d/aa;

    iget-object v0, v0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget-object v0, v0, Lcom/android/d/m;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "GoogleAuthApiIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error description received from server: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/google/android/gms/auth/api/h;->b:Lcom/android/d/aa;

    iget-object v0, v0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    iget v0, v0, Lcom/android/d/m;->a:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_5

    move v0, v7

    :goto_4
    if-ne v0, v7, :cond_4

    invoke-static {p1, v8}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/google/android/gms/auth/api/d;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/auth/api/d;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_4
    .catch Lcom/google/android/gms/auth/af; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/auth/api/d; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/auth/api/q; {:try_start_4 .. :try_end_4} :catch_5

    .line 276
    :catch_3
    move-exception v0

    .line 278
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/d;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v9}, Lcom/google/android/gms/auth/api/f;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 263
    :cond_5
    const/16 v2, 0x193

    if-ne v0, v2, :cond_6

    const/16 v0, 0xbb9

    goto :goto_4

    :cond_6
    :try_start_5
    div-int/lit8 v2, v0, 0x64

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const/16 v0, 0xbba

    goto :goto_4

    :cond_7
    div-int/lit8 v2, v0, 0x64

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    const/16 v0, 0xbbb

    goto :goto_4

    :cond_8
    const-string v2, "GoogleAuthApiIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response code received: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/google/android/gms/auth/af; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/android/gms/auth/api/d; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/google/android/gms/auth/api/q; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v0, 0xa

    goto :goto_4

    .line 279
    :catch_4
    move-exception v0

    .line 281
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v9}, Lcom/google/android/gms/auth/api/f;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 284
    :catch_5
    move-exception v0

    .line 285
    const/16 v1, 0xbbd

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/q;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v9}, Lcom/google/android/gms/auth/api/f;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 286
    :catch_6
    move-exception v0

    goto/16 :goto_3

    :cond_9
    move-object v8, v9

    goto/16 :goto_0
.end method
