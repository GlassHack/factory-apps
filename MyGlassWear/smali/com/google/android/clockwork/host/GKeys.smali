.class public final Lcom/google/android/clockwork/host/GKeys;
.super Ljava/lang/Object;
.source "GKeys.java"


# static fields
.field public static final COMPANION_LOGGING_ENABLED:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DEFAULT_VIBRATION_PATTERN:Ljava/lang/String; = "0, 150"

.field public static final DEFAULT_VIBRATION_PATTERN:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_UNREAD_RANKING:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_UNREAD_UI:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLLOW_ON_SUPPORTED_LANGUAGES:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLLOW_ON_SUPPORTED_LOCALES:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSERVICES_KEY_TIME_SYNC_PERIOD_MS:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_LOGGING_ENABLED:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_RANKING:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_RANKING_DEPRECATED:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_RANKING_SEPARATOR:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_RANKING_UNKNOWN_PACKAGE:Lcom/google/android/gsf/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 13
    const-string v0, "cw:companion_logging_enabled"

    invoke-static {v0, v3}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Z)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->COMPANION_LOGGING_ENABLED:Lcom/google/android/gsf/GservicesValue;

    .line 16
    const-string v0, "cw:home_logging_enabled"

    invoke-static {v0, v3}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Z)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->HOME_LOGGING_ENABLED:Lcom/google/android/gsf/GservicesValue;

    .line 19
    const-string v0, "cw:time_sync_period_ms"

    const-wide/32 v1, 0x2932e00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->GSERVICES_KEY_TIME_SYNC_PERIOD_MS:Lcom/google/android/gsf/GservicesValue;

    .line 25
    const-string v0, "cw:default_vibration_pattern"

    const-string v1, "0, 150"

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->DEFAULT_VIBRATION_PATTERN:Lcom/google/android/gsf/GservicesValue;

    .line 29
    const-string v0, "cw:disable_unread_ui"

    invoke-static {v0, v3}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Z)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->DISABLE_UNREAD_UI:Lcom/google/android/gsf/GservicesValue;

    .line 32
    const-string v0, "cw:disable_unread_ranking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Z)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->DISABLE_UNREAD_RANKING:Lcom/google/android/gsf/GservicesValue;

    .line 36
    const-string v0, "package_ranking"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING_DEPRECATED:Lcom/google/android/gsf/GservicesValue;

    .line 39
    const-string v0, "cw:package_ranking"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING:Lcom/google/android/gsf/GservicesValue;

    .line 42
    const-string v0, "cw:package_ranking_separator"

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING_SEPARATOR:Lcom/google/android/gsf/GservicesValue;

    .line 45
    const-string v0, "cw:package_ranking_unknown_package"

    const-string v1, "unknown_package"

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->PACKAGE_RANKING_UNKNOWN_PACKAGE:Lcom/google/android/gsf/GservicesValue;

    .line 49
    const-string v0, "cw:follow_on_supported_languages"

    const-string v1, "en"

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->FOLLOW_ON_SUPPORTED_LANGUAGES:Lcom/google/android/gsf/GservicesValue;

    .line 53
    const-string v0, "cw:follow_on_supported_locales"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/GKeys;->FOLLOW_ON_SUPPORTED_LOCALES:Lcom/google/android/gsf/GservicesValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
