.class public final Lcom/google/glass/util/Checkin;
.super Ljava/lang/Object;
.source "Checkin.java"


# static fields
.field public static final ACTION_CHECKIN:Ljava/lang/String; = "android.server.checkin.CHECKIN"

.field public static final ACTION_CHECKIN_COMPLETE:Ljava/lang/String; = "com.google.android.checkin.CHECKIN_COMPLETE"

.field private static final KEY_CHECKIN_TIME:Ljava/lang/String; = "checkin_time"

.field public static final LAST_CHECKIN_UNKNOWN:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private settingsContract:Lcom/google/glass/util/SettingsContract;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/util/Checkin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Checkin;->TAG:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/glass/util/Checkin;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Checkin;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/util/SettingsContract;

    invoke-direct {v0}, Lcom/google/glass/util/SettingsContract;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/Checkin;->settingsContract:Lcom/google/glass/util/SettingsContract;

    .line 36
    iput-object p1, p0, Lcom/google/glass/util/Checkin;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private getLastCheckin()J
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 58
    iget-object v1, p0, Lcom/google/glass/util/Checkin;->settingsContract:Lcom/google/glass/util/SettingsContract;

    iget-object v2, p0, Lcom/google/glass/util/Checkin;->context:Landroid/content/Context;

    const-string v3, "checkin_time"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/SettingsContract;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "lastCheckin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-wide/16 v1, -0x1

    .line 62
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/util/Checkin;->getLastCheckin()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Last checkin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public getLastCheckinTime()J
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/util/Checkin;->getLastCheckin()J

    move-result-wide v0

    return-wide v0
.end method

.method public storeLastCheckinTime(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/util/Checkin;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Checkin @ %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/util/Checkin;->settingsContract:Lcom/google/glass/util/SettingsContract;

    iget-object v1, p0, Lcom/google/glass/util/Checkin;->context:Landroid/content/Context;

    const-string v2, "checkin_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SettingsContract;->updateOrInsert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    return-void
.end method
