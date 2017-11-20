.class final Lcom/google/glass/logging/EventLogUtils$ShutdownRebootProcessor;
.super Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;
.source "EventLogUtils.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShutdownRebootProcessor"
.end annotation


# static fields
.field public static final LOW_BATTERY:Ljava/lang/String; = "low_battery"

.field public static final LOW_BATTERY_PERCENT:J = 0x2L

.field private static final TAG:I = 0xf42a6

.field public static final UNEXPECTED:Ljava/lang/String; = "unexpected"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 359
    const v0, 0xf42a6

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->SHUTDOWN_REBOOT_PARAMS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(I[Ljava/lang/String;)V

    .line 360
    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 364
    const v0, 0xf42a6

    return v0
.end method

.method public process(Landroid/util/EventLog$Event;)Ljava/util/List;
    .locals 7
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/EventLog$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->process(Landroid/util/EventLog$Event;)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v2

    .line 373
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 378
    .local v1, "proto":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-static {}, Lcom/google/glass/system/PerformanceHelper$Provider;->getInstance()Lcom/google/glass/system/PerformanceHelper$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/system/PerformanceHelper$Provider;->get()Lcom/google/glass/system/PerformanceHelper;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Lcom/google/glass/system/PerformanceHelper;->getReportedBatteryStateOfChargePercent()J

    move-result-wide v3

    long-to-int v0, v3

    .line 380
    .local v0, "batteryPercentage":I
    int-to-long v3, v0

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 382
    invoke-virtual {v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "r=unexpected"

    const-string v5, "r=low_battery"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    goto :goto_0
.end method
