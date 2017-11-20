.class public Lcom/google/android/clockwork/bugreport/BugReportConstants;
.super Ljava/lang/Object;
.source "BugReportConstants.java"


# static fields
.field public static final BUGREPORT_RECEIVED_INTENT:Ljava/lang/String; = "com.google.android.clockwork.BUGREPORT_RECEIVED"

.field public static final BUG_REPORT_NAME:Ljava/lang/String; = "bugreport_name"

.field public static final BUG_REPORT_PATH_WITH_FEATURE:Ljava/lang/String;

.field public static final CREATE_BUGREPORT_ACTION:Ljava/lang/String; = "com.google.android.clockwork.CREATE_BUG_REPORT"

.field public static final DATA_ITEM_PREFIX:Ljava/lang/String;

.field public static final DATA_ITEM_URI_INTENT_KEY:Ljava/lang/String; = "bugreport"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FEATURE_TAG:Ljava/lang/String; = "bugreport"

.field public static final SCREENSHOT_NAME:Ljava/lang/String; = "screenshot_name"

.field public static final SERVICE_PATH:Ljava/lang/String; = "/bugreport/service"

.field public static final TAG:Ljava/lang/String; = "ClockworkBugReport"

.field public static final TAKE_BUG_REPORT:Ljava/lang/String; = "/bugreport"

.field public static final WATCH_BUGREPORT_ASSET_KEY:Ljava/lang/String; = "watch_bugreport_asset"

.field public static final WATCH_SCREENSHOT_ASSET_KEY:Ljava/lang/String; = "watch_screenshot_asset"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "bugreport"

    const-string v1, "/bugreport"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/bugreport/BugReportConstants;->BUG_REPORT_PATH_WITH_FEATURE:Ljava/lang/String;

    .line 28
    const-string v0, "bugreport"

    const-string v1, "/bugreport"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/bugreport/BugReportConstants;->DATA_ITEM_PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
