.class public final Lcom/google/android/location/clientlib/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 363
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_opt_in"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 368
    :goto_0
    return v0

    .line 365
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/location/clientlib/NlpLocation;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 377
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 379
    if-nez v1, :cond_0

    .line 432
    :goto_0
    return-object v3

    .line 383
    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_RELEASE_VERSION"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 391
    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 393
    if-eqz v7, :cond_8

    .line 394
    const-string v0, "levelId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    const-string v0, "levelId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_1
    const-string v4, "levelNumberE3"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 399
    const-string v4, "levelNumberE3"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 403
    :goto_2
    const-string v5, "travelState"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    const-string v5, "travelState"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    const-string v6, "stationary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 409
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 416
    :goto_3
    const-string v6, "networkLocationType"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 417
    const-string v6, "networkLocationType"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    const-string v8, "cell"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 420
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 427
    :goto_4
    const-string v8, "dbgProtoBuf"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 428
    const-string v3, "dbgProtoBuf"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    .line 432
    :goto_5
    new-instance v0, Lcom/google/android/location/clientlib/NlpLocation;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/clientlib/NlpLocation;-><init>(Landroid/location/Location;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[B)V

    move-object v3, v0

    goto :goto_0

    .line 410
    :cond_1
    const-string v6, "moving"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 421
    :cond_2
    const-string v8, "wifi"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 422
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_3
    move-object v7, v3

    move-object v3, v0

    goto :goto_5

    :cond_4
    move-object v6, v3

    goto :goto_4

    :cond_5
    move-object v5, v3

    goto :goto_3

    :cond_6
    move-object v4, v3

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto/16 :goto_1

    :cond_8
    move-object v7, v3

    move-object v6, v3

    move-object v5, v3

    move-object v4, v3

    goto :goto_5
.end method

.method public static final a(Lcom/google/android/location/clientlib/e;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/google/android/location/clientlib/d;->a:[I

    invoke-virtual {p0}, Lcom/google/android/location/clientlib/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    const-string v0, "com.google.android.location.internal.GMM_NLP"

    goto :goto_0

    .line 293
    :pswitch_1
    const-string v0, "com.google.android.location.internal.GMS_NLP"

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
