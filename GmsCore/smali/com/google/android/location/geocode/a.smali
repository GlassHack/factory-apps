.class final Lcom/google/android/location/geocode/a;
.super Lcom/android/location/provider/GeocodeProvider;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/location/provider/GeocodeProvider;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/location/geocode/a;->a:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public final onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/geocode/a;->a:Landroid/content/Context;

    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x1

    const-wide v8, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, p1

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v7, 0x2

    const-wide v8, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, p3

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    new-instance v7, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->r:Lcom/google/g/a/b/b/c;

    invoke-direct {v7, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/4 v6, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->O:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x1

    move/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    invoke-static {v3, v4}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/g/a/b/b/a;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    if-eqz v2, :cond_0

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->z:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v5}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v6, v2}, Lcom/google/g/a/b/b/a;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->T:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    new-instance v6, Lcom/google/j/b/j;

    const-string v7, "g:loc/ql"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lcom/google/j/b/j;-><init>(Ljava/lang/String;[B)V

    new-instance v7, Lcom/google/android/location/os/real/an;

    invoke-direct {v7, v5}, Lcom/google/android/location/os/real/an;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-virtual {v6, v7}, Lcom/google/j/b/m;->a(Lcom/google/j/b/n;)V

    invoke-static {v3}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;)Lcom/google/android/location/d/j;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/location/d/j;->a(Lcom/google/j/b/m;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, v7, Lcom/google/android/location/os/real/an;->a:Lcom/google/j/c/a;

    invoke-virtual {v2}, Lcom/google/j/c/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/g/a/b/b/a;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v2, :cond_4

    :try_start_4
    iget-boolean v2, v7, Lcom/google/android/location/os/real/an;->b:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid response from server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 49
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_0
    return-object v2

    .line 46
    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v3, Lcom/google/android/location/j/a;->d:Z

    if-eqz v3, :cond_1

    const-string v3, "GlsClient"

    const-string v4, "reverseGeocode(): unable to write request to payload"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 51
    :catch_2
    move-exception v2

    .line 52
    const-string v3, "GeocodeProvider"

    const-string v4, "getFromLocation got exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    :catch_3
    move-exception v2

    :try_start_6
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "GlsClient"

    const-string v3, "reverseGeocode(): response timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "response time-out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timed out waiting for response from server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_5

    const-string v2, "GlsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reverseGeocode(): RPC failed with status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RPC failed with status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v3, v5}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_8

    const-string v2, "GlsClient"

    const-string v3, "reverseGeocode(): no ReplyElement"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_8
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 46
    :cond_9
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    if-eqz v3, :cond_a

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_8

    const-string v2, "GlsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reverseGeocode(): GLS failed with status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_b

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_8

    const-string v2, "GlsClient"

    const-string v3, "reverseGeocode(): no location in ReplyElement"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_c

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_8

    const-string v2, "GlsClient"

    const-string v3, "reverseGeocode(): no feature in GLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    move-object/from16 v0, p7

    invoke-static {v2, v4, v0}, Lcom/google/android/location/os/real/ah;->a(Lcom/google/g/a/b/b/a;Ljava/util/Locale;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1
.end method

.method public final onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/geocode/a;->a:Landroid/content/Context;

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->r:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, p1}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/4 v7, 0x3

    invoke-virtual {v5, v7, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->O:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x1

    move/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const-wide/16 v8, 0x0

    cmpl-double v7, p2, v8

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v7, p4, v8

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v7, p6, v8

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v7, p8, v8

    if-eqz v7, :cond_0

    new-instance v7, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v7, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v8, 0x1

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v10, p2

    double-to-int v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v8, 0x2

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double v10, v10, p4

    double-to-int v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    new-instance v8, Lcom/google/g/a/b/b/a;

    sget-object v9, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v8, v9}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v9, 0x1

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double v10, v10, p6

    double-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v9, 0x2

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double v10, v10, p8

    double-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    new-instance v9, Lcom/google/g/a/b/b/a;

    sget-object v10, Lcom/google/android/location/n/a;->l:Lcom/google/g/a/b/b/c;

    invoke-direct {v9, v10}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v7}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/4 v7, 0x2

    invoke-virtual {v9, v7, v8}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v9}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    invoke-static {v3, v4}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/g/a/b/b/a;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    if-eqz v2, :cond_1

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->z:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v5}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v6, v2}, Lcom/google/g/a/b/b/a;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->T:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    new-instance v6, Lcom/google/j/b/j;

    const-string v7, "g:loc/ql"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lcom/google/j/b/j;-><init>(Ljava/lang/String;[B)V

    new-instance v7, Lcom/google/android/location/os/real/an;

    invoke-direct {v7, v5}, Lcom/google/android/location/os/real/an;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-virtual {v6, v7}, Lcom/google/j/b/m;->a(Lcom/google/j/b/n;)V

    invoke-static {v3}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;)Lcom/google/android/location/d/j;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/location/d/j;->a(Lcom/google/j/b/m;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, v7, Lcom/google/android/location/os/real/an;->a:Lcom/google/j/c/a;

    invoke-virtual {v2}, Lcom/google/j/c/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/g/a/b/b/a;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v2, :cond_5

    :try_start_4
    iget-boolean v2, v7, Lcom/google/android/location/os/real/an;->b:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid response from server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 67
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_0
    return-object v2

    .line 63
    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v3, Lcom/google/android/location/j/a;->d:Z

    if-eqz v3, :cond_2

    const-string v3, "GlsClient"

    const-string v4, "forwardGeocode(): unable to write request to payload"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 69
    :catch_2
    move-exception v2

    .line 70
    const-string v3, "GeocodeProvider"

    const-string v4, "getFromLocationName got exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v2, 0x0

    goto :goto_0

    .line 63
    :catch_3
    move-exception v2

    :try_start_6
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_3

    const-string v2, "GlsClient"

    const-string v3, "forwardGeocode(): response timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "response time-out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timed out waiting for response from server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_6

    const-string v2, "GlsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "forwardGeocode(): RPC failed with status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RPC failed with status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v3, v5}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_9

    const-string v2, "GlsClient"

    const-string v3, "forwardGeocode(): no ReplyElement"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_9
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 63
    :cond_a
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    if-eqz v3, :cond_b

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_9

    const-string v2, "GlsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "forwardGeocode(): GLS failed with status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_c

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_9

    const-string v2, "GlsClient"

    const-string v3, "forwardGeocode(): no location in ReplyElement"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_d

    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_9

    const-string v2, "GlsClient"

    const-string v3, "forwardGeocode(): no feature in GLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_d
    move-object/from16 v0, p12

    invoke-static {v2, v4, v0}, Lcom/google/android/location/os/real/ah;->a(Lcom/google/g/a/b/b/a;Ljava/util/Locale;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1
.end method
