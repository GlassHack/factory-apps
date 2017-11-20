.class public Lcom/google/android/gsf/checkin/CheckinTask;
.super Landroid/os/AsyncTask;
.source "CheckinTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/CheckinTask$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/gsf/checkin/CheckinTask$Params;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    return-void
.end method

.method private static combineResponses(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 9
    .param p0, "older"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .param p1, "newer"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntentCount()I

    move-result v8

    .line 373
    .local v8, "oldNum":I
    invoke-virtual {p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntentCount()I

    move-result v5

    .line 374
    .local v5, "newNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 375
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntent(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    move-result-object v7

    .line 376
    .local v7, "oldIntent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    invoke-virtual {v7}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "oldAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 381
    .local v1, "is_dupe":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_0

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {p1, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntent(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    move-result-object v4

    .line 383
    .local v4, "newIntent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    invoke-virtual {v4}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "newAction":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    .end local v3    # "newAction":Ljava/lang/String;
    .end local v4    # "newIntent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1, v7}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->addIntent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .line 374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "is_dupe":Z
    .end local v2    # "j":I
    .end local v6    # "oldAction":Ljava/lang/String;
    .end local v7    # "oldIntent":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    :cond_2
    return-object p1
.end method

.method private static haveExpDetectUserConsent(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 402
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_user_consent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static makeRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;J)J
    .locals 19
    .param p0, "params"    # Lcom/google/android/gsf/checkin/CheckinTask$Params;
    .param p1, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .param p2, "bookmark"    # J

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 204
    .local v11, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 206
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 209
    .local v18, "wm":Landroid/net/wifi/WifiManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addBuildProperties(Landroid/content/SharedPreferences;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addPackageProperties(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 211
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v11, v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addNetworkProperties(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 212
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addLocaleProperty(Ljava/util/Locale;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 213
    const-wide/16 v15, 0x0

    .line 214
    .local v15, "securityToken":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    const-string v4, "CheckinTask_securityToken"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 217
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-nez v3, :cond_1

    .line 219
    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "security_token"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .local v13, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    .line 222
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v13    # "dis":Ljava/io/DataInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-wide v0, v15

    move-object/from16 v2, p1

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addIdProperties(Landroid/content/Context;JLcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addAccountInfo(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 231
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addTimeZone(Ljava/util/TimeZone;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addDeviceConfiguration(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addRequestedGroups(Landroid/content/Context;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    if-eqz v3, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 237
    .local v12, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinTask;->haveExpDetectUserConsent(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequestBytes:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxEventBytes:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "checkin_dropbox_upload"

    aput-object v9, v7, v8

    invoke-static {v12, v7}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-wide/from16 v8, p2

    move-object/from16 v10, p1

    invoke-static/range {v3 .. v10}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addEvents(ZLandroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)J

    move-result-wide p2

    .line 243
    .end local v12    # "cr":Landroid/content/ContentResolver;
    :cond_2
    return-wide p2

    .line 225
    :catch_0
    move-exception v14

    .line 226
    .local v14, "e":Ljava/io/IOException;
    const-string v3, "CheckinTask"

    const-string v4, "Error reading backup security token file"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v14    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static maybeSetTime(Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/CheckinTask$Params;)Z
    .locals 12
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "params"    # Lcom/google/android/gsf/checkin/CheckinTask$Params;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 282
    iget-object v8, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    const-string v9, "https:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 308
    :goto_0
    return v7

    .line 283
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "Content-type"

    const-string v9, "application/x-protobuffer"

    invoke-virtual {v1, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {v7}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->newRequest(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 287
    invoke-interface {p0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/android/gsf/checkin/CheckinTask;->parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v2

    .line 288
    .local v2, "response":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    invoke-virtual {v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasTimeMsec()Z

    move-result v8

    if-nez v8, :cond_1

    .line 289
    const-string v8, "CheckinTask"

    const-string v9, "No time of day in checkin server response"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 294
    .local v5, "systemTime":J
    invoke-virtual {v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getTimeMsec()J

    move-result-wide v3

    .line 298
    .local v3, "serverTime":J
    sub-long v8, v3, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeAdjustmentMillis:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 299
    const-string v8, "CheckinTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server time agrees: delta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v3, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msec"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    :cond_2
    iget-wide v8, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeSettingMillis:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_3

    .line 302
    const-string v8, "CheckinTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server time is curiously old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :cond_3
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting time from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v7, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 307
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v3, v4}, Landroid/app/AlarmManager;->setTime(J)V

    .line 308
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private static parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 11
    .param p0, "params"    # Lcom/google/android/gsf/checkin/CheckinTask$Params;
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const-string v8, "Retry-After"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 315
    .local v6, "retryAfter":Lorg/apache/http/Header;
    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    if-eqz v8, :cond_0

    .line 316
    iget-object v8, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 317
    const-string v8, "CheckinTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got Retry-After: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    :goto_0
    const-string v8, "Content-Type"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 328
    .local v0, "contentType":Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 329
    :cond_1
    new-instance v8, Ljava/io/IOException;

    const-string v9, "No Content-Type header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 319
    .end local v0    # "contentType":Lorg/apache/http/Header;
    :cond_2
    const-string v8, "CheckinTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t parse Retry-After: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .restart local v0    # "contentType":Lorg/apache/http/Header;
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "application/x-protobuffer"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 332
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 335
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 336
    .local v7, "status":Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 337
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_6

    .line 338
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 339
    :cond_5
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rejected response from server: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 341
    :cond_6
    if-nez v2, :cond_7

    .line 342
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Empty response from server: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 345
    :cond_7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 346
    .local v3, "input":Ljava/io/InputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 347
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 348
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    move-object v3, v4

    .line 351
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :cond_8
    new-instance v5, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    invoke-direct {v5}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;-><init>()V

    .line 353
    .local v5, "parsed":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    :try_start_0
    invoke-static {v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 358
    invoke-virtual {v5}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasStatsOk()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getStatsOk()Z

    move-result v8

    if-nez v8, :cond_a

    .line 359
    :cond_9
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Server refused checkin"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v8

    .line 362
    :cond_a
    return-object v5
.end method

.method private static sendRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 11
    .param p0, "params"    # Lcom/google/android/gsf/checkin/CheckinTask$Params;
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "request"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 250
    .local v4, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "Content-type"

    const-string v8, "application/x-protobuffer"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 253
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 254
    .local v3, "gzipos":Ljava/util/zip/GZIPOutputStream;
    invoke-static {v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v6

    .line 255
    .local v6, "micro":Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    invoke-virtual {p2, v6}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 256
    invoke-virtual {v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    .line 257
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 259
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 260
    .local v2, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v7, "gzip"

    invoke-virtual {v2, v7}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 262
    const-string v7, "Accept-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :try_start_0
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending checkin request ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/http/entity/ByteArrayEntity;->getContentLength()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-interface {p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 274
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-static {p0, v5}, Lcom/google/android/gsf/checkin/CheckinTask;->parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v7

    return-object v7

    .line 268
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljavax/net/ssl/SSLException;
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSL error, attempting time correction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p1, p0}, Lcom/google/android/gsf/checkin/CheckinTask;->maybeSetTime(Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/CheckinTask$Params;)Z

    move-result v7

    if-nez v7, :cond_0

    throw v1

    .line 271
    :cond_0
    invoke-interface {p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 25
    .param p1, "args"    # [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .prologue
    .line 126
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Must be one Params object"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 127
    :cond_0
    const/16 v21, 0x0

    aget-object v15, p1, v21

    .line 129
    .local v15, "params":Lcom/google/android/gsf/checkin/CheckinTask$Params;
    const/4 v5, 0x0

    .line 130
    .local v5, "client":Lcom/google/android/common/http/GoogleHttpClient;
    const/4 v7, 0x0

    .line 131
    .local v7, "combined":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    const/4 v8, 0x0

    .line 134
    .local v8, "count":I
    const-wide/16 v3, 0x0

    .line 135
    .local v3, "bookmark":J
    :try_start_0
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "CheckinTask_bookmark"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 137
    :cond_1
    new-instance v6, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "Android-Checkin/2.0"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .local v6, "client":Lcom/google/android/common/http/GoogleHttpClient;
    :goto_0
    :try_start_1
    iget v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequests:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    .line 140
    move-wide v13, v3

    .line 141
    .local v13, "oldBookmark":J
    invoke-static {v8}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->newRequest(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    move-result-object v16

    .line 142
    .local v16, "request":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    move-object/from16 v0, v16

    invoke-static {v15, v0, v3, v4}, Lcom/google/android/gsf/checkin/CheckinTask;->makeRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;J)J

    move-result-wide v3

    .line 143
    cmp-long v21, v13, v3

    if-nez v21, :cond_5

    if-lez v8, :cond_5

    .line 187
    .end local v13    # "oldBookmark":J
    .end local v16    # "request":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    :cond_2
    const-string v21, "CheckinTask"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Checkin success: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " requests sent)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/common/OperationScheduler;->onSuccess()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :cond_3
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    move-object v5, v6

    .line 197
    .end local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    :cond_4
    :goto_1
    return-object v7

    .line 145
    .end local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v13    # "oldBookmark":J
    .restart local v16    # "request":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    :cond_5
    :try_start_2
    move-object/from16 v0, v16

    invoke-static {v15, v6, v0}, Lcom/google/android/gsf/checkin/CheckinTask;->sendRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v17

    .line 146
    .local v17, "response":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 147
    :cond_6
    if-nez v7, :cond_b

    move-object/from16 v7, v17

    .line 149
    :goto_2
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 150
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 152
    .local v12, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v21, "CheckinTask_bookmark"

    move-object/from16 v0, v21

    invoke-interface {v12, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSecurityToken()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 157
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSecurityToken()J

    move-result-wide v19

    .line 158
    .local v19, "value":J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-eqz v21, :cond_8

    .line 160
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "CheckinTask_securityToken"

    const-wide/16 v23, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    cmp-long v21, v19, v21

    if-eqz v21, :cond_7

    .line 161
    const-string v21, "CheckinTask_securityToken"

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 165
    :cond_7
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 166
    .local v9, "dir":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v21, "security_token"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v18, "tokenFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_8

    .line 168
    new-instance v10, Ljava/io/DataOutputStream;

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "security_token"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    .local v10, "dos":Ljava/io/DataOutputStream;
    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 173
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 178
    .end local v9    # "dir":Ljava/io/File;
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v18    # "tokenFile":Ljava/io/File;
    .end local v19    # "value":J
    :cond_8
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_9
    if-eqz v17, :cond_a

    .line 182
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinResponseProcessor;->updateGservices(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;Landroid/content/ContentResolver;)V

    .line 139
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 147
    :cond_b
    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/google/android/gsf/checkin/CheckinTask;->combineResponses(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    goto/16 :goto_2

    .line 189
    .end local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .end local v13    # "oldBookmark":J
    .end local v16    # "request":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .end local v17    # "response":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .restart local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    :catch_0
    move-exception v11

    .line 190
    .local v11, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v21, "CheckinTask"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Checkin failed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " (request #"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    iget-object v0, v15, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :cond_c
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto/16 :goto_1

    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    :goto_4
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    :cond_d
    throw v21

    .end local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    :catchall_1
    move-exception v21

    move-object v5, v6

    .end local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    goto :goto_4

    .line 189
    .end local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    :catch_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    goto :goto_3

    .end local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    :cond_e
    move-object v5, v6

    .end local v6    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v5    # "client":Lcom/google/android/common/http/GoogleHttpClient;
    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinTask;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v0

    return-object v0
.end method
