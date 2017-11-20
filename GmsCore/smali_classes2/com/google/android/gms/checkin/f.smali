.class public Lcom/google/android/gms/checkin/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field protected d:Lcom/google/android/gms/checkin/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    return-void
.end method

.method private static a(Lcom/google/android/gms/checkin/b/c;Lcom/google/android/gms/checkin/b/c;)Lcom/google/android/gms/checkin/b/c;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->c()I

    move-result v4

    .line 424
    invoke-virtual {p1}, Lcom/google/android/gms/checkin/b/c;->c()I

    move-result v5

    move v3, v0

    .line 425
    :goto_0
    if-ge v3, v4, :cond_2

    .line 426
    invoke-virtual {p0, v3}, Lcom/google/android/gms/checkin/b/c;->a(I)Lcom/google/android/gms/checkin/b/l;

    move-result-object v6

    .line 427
    iget-object v7, v6, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    move v1, v0

    move v2, v0

    .line 432
    :goto_1
    if-ge v1, v5, :cond_0

    if-nez v2, :cond_0

    .line 433
    invoke-virtual {p1, v1}, Lcom/google/android/gms/checkin/b/c;->a(I)Lcom/google/android/gms/checkin/b/l;

    move-result-object v2

    .line 434
    iget-object v2, v2, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    .line 435
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p1, v6}, Lcom/google/android/gms/checkin/b/c;->a(Lcom/google/android/gms/checkin/b/l;)Lcom/google/android/gms/checkin/b/c;

    .line 425
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 440
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->m:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/google/android/gms/checkin/b/c;->m:Z

    if-nez v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/checkin/b/c;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;

    .line 443
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/c;->o:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/google/android/gms/checkin/b/c;->o:Z

    if-nez v1, :cond_4

    .line 444
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/checkin/b/c;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;

    .line 446
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->f()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/checkin/b/c;->f()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v0

    .line 447
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/c;->f()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/checkin/b/c;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/c;

    .line 447
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 451
    :cond_5
    return-object p1
.end method

.method private static a(Lcom/google/android/gms/checkin/g;Lcom/google/android/gms/http/GoogleHttpClient;Lcom/google/android/gms/checkin/b/b;)Lcom/google/android/gms/checkin/b/c;
    .locals 12

    .prologue
    .line 284
    new-instance v3, Ljava/net/URL;

    iget-object v0, p0, Lcom/google/android/gms/checkin/g;->e:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_6

    .line 287
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/http/GoogleHttpClient;->getConnectionFactory()Lcom/google/android/gms/http/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/http/e;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 288
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 289
    const-string v1, "Content-type"

    const-string v4, "application/x-protobuffer"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "Content-encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "Accept-encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 294
    new-instance v1, Lcom/google/c/e/c;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/c/e/c;-><init>(Ljava/io/OutputStream;)V

    .line 295
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 296
    invoke-static {v4}, Lcom/google/protobuf/a/c;->a(Ljava/io/OutputStream;)Lcom/google/protobuf/a/c;

    move-result-object v5

    .line 297
    invoke-virtual {p2, v5}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/protobuf/a/c;)V

    .line 298
    invoke-virtual {v5}, Lcom/google/protobuf/a/c;->a()V

    .line 299
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 300
    invoke-virtual {v1}, Lcom/google/c/e/c;->close()V

    .line 302
    const-string v4, "CheckinTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending checkin request ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/c/e/c;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " bytes)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 304
    invoke-static {p0, v0}, Lcom/google/android/gms/checkin/f;->a(Lcom/google/android/gms/checkin/g;Ljava/net/HttpURLConnection;)Lcom/google/android/gms/checkin/b/c;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :goto_1
    return-object v0

    .line 305
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 306
    const-string v0, "CheckinTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSL error, attempting time correction: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-nez v2, :cond_4

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/checkin/g;->e:Ljava/lang/String;

    const-string v4, "https:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    throw v1

    :cond_0
    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/checkin/g;->e:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/http/GoogleHttpClient;->getConnectionFactory()Lcom/google/android/gms/http/e;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/http/e;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v4, "CheckinTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Attempting to get time from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-type"

    const-string v5, "application/x-protobuffer"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept-encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/google/protobuf/a/c;->a(Ljava/io/OutputStream;)Lcom/google/protobuf/a/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/google/android/gms/checkin/a;->a(I)Lcom/google/android/gms/checkin/b/b;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/protobuf/a/c;)V

    invoke-virtual {v5}, Lcom/google/protobuf/a/c;->a()V

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {p0, v0}, Lcom/google/android/gms/checkin/f;->a(Lcom/google/android/gms/checkin/g;Ljava/net/HttpURLConnection;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v0

    iget-boolean v4, v0, Lcom/google/android/gms/checkin/b/c;->c:Z

    if-nez v4, :cond_1

    const-string v0, "CheckinTask"

    const-string v4, "No time of day in checkin server response"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/checkin/b/c;->d:J

    sub-long v8, v6, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/gms/checkin/g;->i:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_2

    const-string v0, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Server time agrees: delta "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_2
    iget-wide v8, p0, Lcom/google/android/gms/checkin/g;->j:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    const-string v0, "CheckinTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server time is curiously old: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_3
    const-string v0, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Changing time from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6, v7}, Landroid/app/AlarmManager;->setTime(J)V

    const/4 v0, 0x1

    goto/16 :goto_2

    .line 311
    :cond_4
    throw v1

    .line 285
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 316
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static a(Lcom/google/android/gms/checkin/g;Ljava/net/HttpURLConnection;)Lcom/google/android/gms/checkin/b/c;
    .locals 4

    .prologue
    .line 369
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    invoke-virtual {v1, v0}, Lcom/android/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const-string v1, "CheckinTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got Retry-After: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 380
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 381
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rejected response from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_1
    const-string v1, "CheckinTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse Retry-After: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 389
    if-nez v0, :cond_3

    .line 390
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No Content-Type header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_3
    const-string v1, "application/x-protobuffer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 393
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad Content-Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 397
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_7

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 399
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 402
    :goto_1
    new-instance v1, Lcom/google/android/gms/checkin/b/c;

    invoke-direct {v1}, Lcom/google/android/gms/checkin/b/c;-><init>()V

    .line 404
    :try_start_0
    invoke-static {v0}, Lcom/google/protobuf/a/b;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/checkin/b/c;->b(Lcom/google/protobuf/a/b;)Lcom/google/android/gms/checkin/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 409
    iget-boolean v0, v1, Lcom/google/android/gms/checkin/b/c;->a:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Lcom/google/android/gms/checkin/b/c;->b:Z

    if-nez v0, :cond_6

    .line 410
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server refused checkin"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    .line 413
    :cond_6
    return-object v1

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Lcom/google/android/gms/checkin/g;)Lcom/google/android/gms/checkin/b/c;
    .locals 18

    .prologue
    .line 181
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be one Params object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    const/4 v2, 0x0

    aget-object v14, p1, v2

    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v3, 0x0

    .line 187
    sget-object v2, Lcom/google/android/gms/common/security/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 191
    const-wide/16 v8, 0x0

    .line 192
    :try_start_0
    iget-object v5, v14, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_1

    iget-object v5, v14, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    const-string v6, "CheckinTask_bookmark"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 194
    :cond_1
    new-instance v13, Lcom/google/android/gms/http/GoogleHttpClient;

    iget-object v5, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CheckinService-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x5d4044

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/2.0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v13, v5, v6, v7, v2}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v12, v3

    .line 201
    :goto_0
    :try_start_1
    iget v2, v14, Lcom/google/android/gms/checkin/g;->h:I

    if-ge v12, v2, :cond_b

    .line 203
    invoke-static {v12}, Lcom/google/android/gms/checkin/a;->a(I)Lcom/google/android/gms/checkin/b/b;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/checkin/f;->d:Lcom/google/android/gms/checkin/b/b;

    .line 204
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/checkin/f;->d:Lcom/google/android/gms/checkin/b/b;

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iget-object v5, v14, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    invoke-static {v5, v10}, Lcom/google/android/gms/checkin/a;->a(Landroid/content/SharedPreferences;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v5, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/google/android/gms/checkin/a;->a(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V

    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/checkin/a;->a(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/google/android/gms/checkin/b/b;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->a(Ljava/util/Locale;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/checkin/h;->a(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v4, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v4, v2, v3, v10}, Lcom/google/android/gms/checkin/a;->a(Landroid/content/Context;JLcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->b(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->a(Ljava/util/TimeZone;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->c(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/gms/checkin/a;->a(Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->d(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->f(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/google/android/gms/checkin/a;->e(Landroid/content/Context;Lcom/google/android/gms/checkin/b/b;)V

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->b:Landroid/os/DropBoxManager;

    if-eqz v2, :cond_f

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v3

    iget-object v4, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/c/a;->e(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, v14, Lcom/google/android/gms/checkin/g;->b:Landroid/os/DropBoxManager;

    iget v5, v14, Lcom/google/android/gms/checkin/g;->g:I

    iget v6, v14, Lcom/google/android/gms/checkin/g;->f:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "checkin_dropbox_upload"

    aput-object v16, v7, v15

    invoke-static {v2, v7}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/checkin/a;->a(ZLandroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/android/gms/checkin/b/b;)J

    move-result-wide v2

    move-wide v4, v2

    .line 205
    :goto_1
    cmp-long v2, v8, v4

    if-nez v2, :cond_2

    if-gtz v12, :cond_b

    .line 207
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/checkin/f;->d:Lcom/google/android/gms/checkin/b/b;

    invoke-static {v14, v13, v2}, Lcom/google/android/gms/checkin/f;->a(Lcom/google/android/gms/checkin/g;Lcom/google/android/gms/http/GoogleHttpClient;Lcom/google/android/gms/checkin/b/b;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v2

    .line 208
    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    if-eqz v3, :cond_3

    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    invoke-virtual {v3}, Lcom/android/a/a;->d()V

    .line 209
    :cond_3
    if-nez v11, :cond_8

    move-object v11, v2

    .line 211
    :goto_2
    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_6

    .line 212
    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 214
    const-string v6, "CheckinTask_bookmark"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 216
    if-eqz v2, :cond_5

    iget-boolean v6, v2, Lcom/google/android/gms/checkin/b/c;->k:Z

    if-eqz v6, :cond_5

    iget-wide v6, v2, Lcom/google/android/gms/checkin/b/c;->l:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 219
    iget-wide v6, v2, Lcom/google/android/gms/checkin/b/c;->l:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    const-string v9, "com.google.android.gsf"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    const-string v9, "CheckinService"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v15, "CheckinTask_securityToken"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v9, v15, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    cmp-long v9, v6, v16

    if-eqz v9, :cond_4

    const-string v9, "CheckinTask_securityToken"

    invoke-interface {v10, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    const-string v15, "security_token"

    invoke-direct {v10, v9, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/io/DataOutputStream;

    const-string v10, "security_token"

    const/4 v15, 0x0

    invoke-virtual {v8, v10, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_5
    :goto_3
    :try_start_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    :cond_6
    if-eqz v2, :cond_7

    .line 226
    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/checkin/b;->a(Lcom/google/android/gms/checkin/b/c;Landroid/content/ContentResolver;)V

    .line 201
    :cond_7
    add-int/lit8 v12, v12, 0x1

    move-wide v8, v4

    goto/16 :goto_0

    .line 209
    :cond_8
    invoke-static {v11, v2}, Lcom/google/android/gms/checkin/f;->a(Lcom/google/android/gms/checkin/b/c;Lcom/google/android/gms/checkin/b/c;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v11

    goto/16 :goto_2

    .line 219
    :catch_0
    move-exception v6

    const-string v6, "CheckinTask"

    const-string v7, "Cannot write token, failed to find GoogleServicesFramework package"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 234
    :catch_1
    move-exception v2

    move-object v3, v2

    move v4, v12

    move-object v5, v13

    move-object v2, v11

    .line 235
    :goto_4
    :try_start_4
    const-string v6, "CheckinTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Checkin failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v14, Lcom/google/android/gms/checkin/g;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (request #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    if-eqz v3, :cond_9

    iget-object v3, v14, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    invoke-virtual {v3}, Lcom/android/a/a;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 239
    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    .line 242
    :cond_a
    :goto_5
    return-object v2

    .line 230
    :cond_b
    :try_start_5
    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v3, "com.google.android.gsf"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string v3, "CheckinService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v3, Lcom/android/a/a;

    invoke-direct {v3, v2}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v3}, Lcom/android/a/a;->b()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 232
    :cond_c
    :goto_6
    :try_start_7
    const-string v2, "CheckinTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checkin success: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/google/android/gms/checkin/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requests sent)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    if-eqz v2, :cond_d

    iget-object v2, v14, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    invoke-virtual {v2}, Lcom/android/a/a;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 239
    :cond_d
    invoke-virtual {v13}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    move-object v2, v11

    goto :goto_5

    .line 230
    :catch_2
    move-exception v2

    :try_start_8
    const-string v2, "CheckinTask"

    const-string v3, "Cannot update checkin success time"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 239
    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    :cond_e
    throw v2

    :catchall_1
    move-exception v2

    move-object v13, v4

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v13, v5

    goto :goto_7

    .line 234
    :catch_3
    move-exception v2

    move-object v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_4

    :cond_f
    move-wide v4, v8

    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Lcom/google/android/gms/checkin/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/checkin/f;->a([Lcom/google/android/gms/checkin/g;)Lcom/google/android/gms/checkin/b/c;

    move-result-object v0

    return-object v0
.end method
