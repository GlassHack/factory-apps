.class public Lcom/google/glass/util/TimeZoneUtil;
.super Ljava/lang/Object;
.source "TimeZoneUtil.java"


# static fields
.field public static final ACTION_COMPANION_UPDATE_TIME_ZONE:Ljava/lang/String; = "com.google.glass.timezone.COMPANION_UPDATE_TIME_ZONE"

.field public static final ACTION_FORCE_UPDATE_TIME_ZONE:Ljava/lang/String; = "com.google.glass.timezone.UPDATE_TIME_ZONE"

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "priority"

.field public static final EXTRA_TIME_ZONE:Ljava/lang/String; = "time_zone"

.field public static final TZ_PRIORITY_COMPANION:I = 0x64

.field public static final TZ_PRIORITY_DEFAULT:I = 0x0

.field public static final TZ_PRIORITY_LOCATION:I = 0x32


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/glass/util/TimeZoneUtil;->context:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public updateTimeZone()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/TimeZoneUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public updateTimeZoneByCompanion(Ljava/lang/String;)V
    .locals 3
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.timezone.COMPANION_UPDATE_TIME_ZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "time_zone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "priority"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/TimeZoneUtil;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 56
    return-void
.end method
