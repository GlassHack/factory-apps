.class public final Lcom/google/android/location/o/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/android/location/o/w;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/o/w;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 61
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/location/Location;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const-string v1, "levelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :try_start_0
    const-class v1, Landroid/location/Location;

    const-string v2, "setIsFromMockProvider"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const/4 p1, 0x0

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 383
    return-void
.end method

.method public static a(Landroid/location/Location;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    :cond_0
    if-nez p1, :cond_1

    .line 208
    const-string v1, "levelNumberE3"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 213
    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Landroid/os/Bundle;)V

    .line 214
    return-void

    .line 210
    :cond_1
    const-string v1, "levelNumberE3"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 133
    if-nez p2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    if-nez v0, :cond_1

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 142
    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static b(Landroid/location/Location;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 165
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    const-string v1, "levelNumberE3"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    if-eq v0, v2, :cond_0

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/location/Location;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v1, "networkLocationType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/location/Location;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const-string v1, "locationType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/location/Location;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 188
    const-string v1, "levelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 193
    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Landroid/os/Bundle;)V

    .line 194
    return-void

    .line 190
    :cond_1
    const-string v1, "levelId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/location/Location;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    :cond_0
    if-nez p1, :cond_1

    .line 255
    const-string v1, "locationType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 260
    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Landroid/os/Bundle;)V

    .line 261
    return-void

    .line 257
    :cond_1
    const-string v1, "locationType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/location/Location;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    .line 270
    const-string v2, "mockLocation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const/4 v0, 0x1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Landroid/location/Location;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 286
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    :cond_0
    const-string v1, "mockLocation"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Landroid/os/Bundle;)V

    .line 295
    sget-object v0, Lcom/google/android/location/o/w;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 297
    :try_start_0
    sget-object v0, Lcom/google/android/location/o/w;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static g(Landroid/location/Location;)Ljava/util/List;
    .locals 12

    .prologue
    const/4 v5, 0x6

    const/4 v11, 0x4

    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 314
    const-string v0, "dbgProtoBuf"

    invoke-static {p0, v0}, Lcom/google/android/location/o/w;->c(Landroid/location/Location;Ljava/lang/String;)[B

    move-result-object v0

    .line 316
    if-nez v0, :cond_1

    .line 317
    const-string v0, "Locations"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "Locations"

    const-string v2, "No NLP debug info in location"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return-object v1

    .line 323
    :cond_1
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 325
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    .line 326
    invoke-virtual {v2}, Lcom/google/g/a/b/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    const-string v0, "Locations"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "Locations"

    const-string v2, "Could not parse NLP debug proto"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v2, "Locations"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const-string v2, "Locations"

    const-string v3, "Exception when parsing NLP debug proto"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v2, v10}, Lcom/google/g/a/b/b/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    const-string v0, "Locations"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "Locations"

    const-string v2, "No GLocRequestElement.WIFI_PROFILE in location; no wifi scan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {v2, v10}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v5

    .line 346
    invoke-virtual {v5, v10}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v6

    .line 347
    if-nez v6, :cond_4

    .line 348
    const-string v0, "Locations"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "Locations"

    const-string v2, "Empty wifi scan in location"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_9

    .line 356
    invoke-virtual {v5, v10, v4}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 357
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/g/a/b/b/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 360
    :goto_2
    invoke-virtual {v3, v11}, Lcom/google/g/a/b/b/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3, v11}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 364
    :goto_3
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 365
    new-instance v7, Lcom/google/android/location/reporting/a/i;

    invoke-direct {v7}, Lcom/google/android/location/reporting/a/i;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/location/reporting/a/i;->a(J)Lcom/google/android/location/reporting/a/i;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/location/reporting/a/i;->a(I)Lcom/google/android/location/reporting/a/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_5
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 357
    goto :goto_2

    :cond_7
    move-object v3, v1

    .line 360
    goto :goto_3

    .line 367
    :cond_8
    const-string v7, "Locations"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 368
    const-string v7, "Locations"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Wifi scan has bad mac: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " or strength: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move-object v1, v2

    .line 373
    goto/16 :goto_0
.end method
