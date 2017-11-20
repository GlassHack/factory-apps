.class Lcom/google/glass/setup/SetupUserAccountTask;
.super Landroid/os/AsyncTask;
.source "SetupUserAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private buildType:Ljava/lang/Integer;

.field private final handler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;",
            ">;"
        }
    .end annotation
.end field

.field private majorVersion:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final serialNumber:Ljava/lang/String;

.field private final softwareVersion:Ljava/lang/String;

.field private final wifiMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/SetupUserAccountTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 4
    .param p1, "serialNumber"    # Ljava/lang/String;
    .param p2, "softwareVersion"    # Ljava/lang/String;
    .param p3, "buildTypeString"    # Ljava/lang/String;
    .param p4, "majorVersion"    # Ljava/lang/String;
    .param p5, "wifiMacAddress"    # Ljava/lang/String;
    .param p6, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "handler":Lcom/google/glass/net/ProtoResponseHandler;, "Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/setup/SetupUserAccountTask;->serialNumber:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/glass/setup/SetupUserAccountTask;->softwareVersion:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/google/glass/setup/SetupUserAccountTask;->majorVersion:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/google/glass/setup/SetupUserAccountTask;->wifiMacAddress:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/google/glass/setup/SetupUserAccountTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 40
    iput-object p7, p0, Lcom/google/glass/setup/SetupUserAccountTask;->handler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 42
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->buildType:Ljava/lang/Integer;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->buildType:Ljava/lang/Integer;

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USERDEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->buildType:Ljava/lang/Integer;

    goto :goto_0

    .line 51
    :cond_3
    sget-object v0, Lcom/google/glass/setup/SetupUserAccountTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unsupported build type [buildType=%s]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/google/glass/setup/SetupUserAccountTask;->doInBackground([Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Landroid/content/ContentResolver;

    .prologue
    .line 58
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/setup/SetupUserAccountTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v2, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;-><init>()V

    .line 64
    .local v2, "request":Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;
    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;

    .line 66
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->serialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->serialNumber:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;->setSerialNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->wifiMacAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->wifiMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;->setWifiMacAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->softwareVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->majorVersion:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->buildType:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 77
    :cond_2
    new-instance v6, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    .line 78
    .local v6, "build":Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->softwareVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->setBuildDisplayId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->majorVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->majorVersion:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->setBuildVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->buildType:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->buildType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->setBuildType(I)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 87
    :cond_5
    invoke-virtual {v2, v6}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;->setBuild(Lcom/google/googlex/glass/common/proto/BuildNano$Build;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;

    .line 90
    .end local v6    # "build":Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    :cond_6
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;->setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountRequest;

    .line 92
    const/4 v7, 0x1

    .line 93
    .local v7, "isImmediate":Z
    new-instance v4, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v0, Lcom/google/glass/setup/SetupUserAccountTask$1;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/SetupUserAccountTask$1;-><init>(Lcom/google/glass/setup/SetupUserAccountTask;)V

    invoke-direct {v4, v0}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    .line 101
    .local v4, "parser":Lcom/google/glass/protobuf/ProtoParser;, "Lcom/google/glass/protobuf/ProtoParser<Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;>;"
    iget-object v0, p0, Lcom/google/glass/setup/SetupUserAccountTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->SETUP_USER_ACCOUNT:Lcom/google/glass/net/ServerConstants$Action;

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/google/glass/setup/SetupUserAccountTask;->handler:Lcom/google/glass/net/ProtoResponseHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 103
    return-void
.end method
