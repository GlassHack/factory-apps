.class public Lcom/google/android/clockwork/settings/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_DISABLE_DOZE:Ljava/lang/String; = "com.google.android.clockwork.action.DISABLE_DOZE"

.field public static final DATA_PATH_PREFIX:Ljava/lang/String;

.field public static final FEATURE_TAG:Ljava/lang/String; = "settings"

.field public static final FIELD_COMMAND:Ljava/lang/String; = "settings.COMMAND"

.field public static final FIELD_COMPANION_TIME:Ljava/lang/String; = "settings.COMPANION_TIME"

.field public static final FIELD_DISABLE_DOZE:Ljava/lang/String; = "settings.DISABLE_DOZE"

.field public static final FIELD_HOME_TIME:Ljava/lang/String; = "settings.HOME_TIME"

.field public static final FIELD_IS_24_HOUR:Ljava/lang/String; = "settings.IS_24_HOUR"

.field public static final FIELD_LOCALE_COUNTRY:Ljava/lang/String; = "settings.locale.COUNTRY"

.field public static final FIELD_LOCALE_LANG:Ljava/lang/String; = "settings.locale.LANGUAGE"

.field public static final FIELD_LOCALE_VARIANT:Ljava/lang/String; = "settings.locale.VARIANT"

.field public static final FIELD_PEEK_PRIVACY_MODE:Ljava/lang/String; = "settings.PEEK_PRIVACY_MODE"

.field public static final FIELD_TIME_ZONE:Ljava/lang/String; = "settings.TIME_ZONE"

.field public static final PATH_RPC_WITH_FEATURE:Ljava/lang/String;

.field public static final PATH_SYNC_COMPLETED:Ljava/lang/String;

.field public static PEEK_PRIVACY_MODE_ALWAYS_HIDE:I = 0x0

.field public static PEEK_PRIVACY_MODE_DEFAULT:I = 0x0

.field public static PEEK_PRIVACY_MODE_SHOW_IF_ENABLED:I = 0x0

.field public static final PROP_DISABLE_AMBIENT:Ljava/lang/String; = "persist.sys.disable_ambient"

.field public static final RPC_GET_COMPANION_TIME:I = 0x1

.field public static final RPC_REQUEST_START_UPDATE:I = 0x0

.field public static final RPC_SET_HOME_TIME:I = 0x2

.field public static final SCREEN_ALWAYS_ON_DATA_PATH_SUFFIX:Ljava/lang/Object;

.field public static final URI_SYNC_COMPLETED:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "settings"

    const-string v1, "/rpc"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/Constants;->PATH_RPC_WITH_FEATURE:Ljava/lang/String;

    .line 11
    const-string v0, "settings"

    const-string v1, "/com.google.android.clockwork.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/Constants;->DATA_PATH_PREFIX:Ljava/lang/String;

    .line 13
    const-string v0, "settings"

    const-string v1, "/sync_completed"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/Constants;->PATH_SYNC_COMPLETED:Ljava/lang/String;

    .line 15
    const-string v0, "settings"

    const-string v1, "/com.google.android.clockwork.settings.SETTINGS_SCREEN_ALWAYS_ON"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/Constants;->SCREEN_ALWAYS_ON_DATA_PATH_SUFFIX:Ljava/lang/Object;

    .line 17
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "wear"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/clockwork/settings/Constants;->PATH_SYNC_COMPLETED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/Constants;->URI_SYNC_COMPLETED:Landroid/net/Uri;

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/google/android/clockwork/settings/Constants;->PEEK_PRIVACY_MODE_SHOW_IF_ENABLED:I

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/google/android/clockwork/settings/Constants;->PEEK_PRIVACY_MODE_ALWAYS_HIDE:I

    .line 37
    sget v0, Lcom/google/android/clockwork/settings/Constants;->PEEK_PRIVACY_MODE_SHOW_IF_ENABLED:I

    sput v0, Lcom/google/android/clockwork/settings/Constants;->PEEK_PRIVACY_MODE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pathForNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/clockwork/settings/Constants;->DATA_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pathForNodeScreenAlwaysOn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/clockwork/settings/Constants;->SCREEN_ALWAYS_ON_DATA_PATH_SUFFIX:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
