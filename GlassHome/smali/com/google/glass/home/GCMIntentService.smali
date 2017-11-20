.class public Lcom/google/glass/home/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/GCMIntentService$3;
    }
.end annotation


# static fields
.field public static final ACTION_RETRY_GCM_REGISTER:Ljava/lang/String; = "retry_gcm_register"

.field private static final ANDROID_ID_PROJECTION:[Ljava/lang/String;

.field private static final ANDROID_ID_SELECTION:Ljava/lang/String; = "name=?"

.field private static final ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

.field private static final GSERVICES_CONTENT_URI:Landroid/net/Uri;

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final entityMetadataDbHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    const-string v0, "content://com.google.android.gsf.gservices"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/home/GCMIntentService$1;

    invoke-direct {v1}, Lcom/google/glass/home/GCMIntentService$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/home/GCMIntentService;-><init>(Lcom/google/glass/entity/EntityMetadataDatabaseHelper;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/google/glass/entity/EntityMetadataDatabaseHelper;)V
    .locals 3
    .param p1, "entityMetadataDbHelper"    # Lcom/google/glass/entity/EntityMetadataDatabaseHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "229668747847"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/google/glass/home/GCMIntentService;->entityMetadataDbHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/glass/home/GCMIntentService;->getGsfDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .param p2, "x2"    # Lcom/google/glass/net/ProtoResponseHandler;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    return-void
.end method

.method private static dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 7
    .param p0, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p1, "request"    # Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;>;"
    const/4 v6, 0x1

    .line 324
    .local v6, "isImmediate":Z
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GCM_REGISTRATION:Lcom/google/glass/net/ServerConstants$Action;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/home/GCMIntentService;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 326
    return-void
.end method

.method private static getGsfDeviceId(Landroid/content/Context;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-wide/16 v6, 0x0

    .line 199
    .local v6, "androidId":J
    const/4 v8, 0x0

    .line 201
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/home/GCMIntentService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    sget-object v4, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 203
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 206
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_2

    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 212
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    return-wide v6

    .line 206
    .restart local v10    # "value":Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v9

    .line 208
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 212
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 213
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isRegisteredWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 4
    .param p0, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p1, "registrationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Ljava/lang/String;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "responseHandler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;>;"
    sget-object v1, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Checking if registered with Glass server."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;-><init>()V

    .line 314
    .local v0, "request":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setAction(I)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 315
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 316
    invoke-static {p0, v0, p2}, Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    .line 317
    return-void
.end method

.method public static registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V
    .locals 4
    .param p0, "application"    # Lcom/google/glass/home/HomeApplication;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 223
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering with Glass server."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot make a request without registration ID."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/google/glass/home/GCMIntentService$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/GCMIntentService$2;-><init>(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/GCMIntentService$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static unregisterWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;)V
    .locals 5
    .param p0, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 290
    sget-object v1, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unregistering from Glass server."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot make a request without registration ID."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;-><init>()V

    .line 300
    .local v0, "request":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setAction(I)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 301
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 302
    new-instance v1, Lcom/google/glass/net/SimpleProtoResponseHandler;

    invoke-direct {v1}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    goto :goto_0
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 100
    sget-object v2, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "An error has occurred: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    if-eqz p2, :cond_1

    const-string v2, "AUTHENTICATION_FAILED"

    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PHONE_REGISTRATION_ERROR"

    .line 105
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    const-class v2, Lcom/google/glass/home/HomeApplication;

    .line 108
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p0, v2, v5}, Lcom/google/glass/home/GCMIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "GCM_REGISTRATION_KEY"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "retry_gcm_register"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/home/GCMIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    sget-object v2, Lcom/google/glass/home/GCMIntentService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Received message: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const-string v2, "p"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "p"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "payload":Ljava/lang/String;
    const-string v2, "remote_wipe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.deviceadmin.REMOTE_WIPE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/home/GCMIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    .end local v1    # "payload":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v1    # "payload":Ljava/lang/String;
    :cond_1
    const-string v2, "capture_feedback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.glass.logging.RemoteBugReportReceiver"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x0

    .line 135
    .local v0, "authority":Ljava/lang/String;
    const-string v2, "timeline_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    const-string v0, "com.google.glass.sync.timeline"

    .line 152
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 153
    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p1, v0, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    goto :goto_0

    .line 137
    :cond_4
    const-string v2, "share_target_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    const-string v0, "com.google.glass.entity"

    goto :goto_1

    .line 139
    :cond_5
    const-string v2, "contact_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/GCMIntentService;->parseContactSyncKeys(Landroid/content/Context;Landroid/content/Intent;)V

    .line 144
    const-string v0, "com.google.glass.entity"

    goto :goto_1

    .line 145
    :cond_6
    const-string v2, "report_location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    const-string v0, "com.google.glass.location"

    goto :goto_1

    .line 147
    :cond_7
    const-string v2, "glassware_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    const-string v0, "com.google.glass.boutique"

    goto :goto_1

    .line 149
    :cond_8
    const-string v2, "setting_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    const-string v0, "com.google.glass.settings.syncable"

    goto :goto_1
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 95
    .local v0, "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    invoke-static {v0, p2}, Lcom/google/glass/home/GCMIntentService;->unregisterWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method parseContactSyncKeys(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v3, "r"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 166
    .local v0, "fullRefresh":Z
    if-eqz v0, :cond_0

    .line 167
    iget-object v3, p0, Lcom/google/glass/home/GCMIntentService;->entityMetadataDbHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contact_sync_token"

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->deleteKey(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 173
    :cond_0
    const-string v3, "l"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 175
    .local v1, "verboseServerLogging":Z
    if-eqz v1, :cond_1

    .line 176
    iget-object v3, p0, Lcom/google/glass/home/GCMIntentService;->entityMetadataDbHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "verbose_server_logging"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->storeKeyValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    :cond_1
    const-string v3, "v"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "versionInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/google/glass/home/GCMIntentService;->entityMetadataDbHelper:Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "focus_version_info"

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->storeKeyValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    :cond_2
    return-void
.end method
