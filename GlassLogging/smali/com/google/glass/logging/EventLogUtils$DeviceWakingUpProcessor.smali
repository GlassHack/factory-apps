.class final Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;
.super Ljava/lang/Object;
.source "EventLogUtils.java"

# interfaces
.implements Lcom/google/glass/logging/EventLogUtils$LogProcessor;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeviceWakingUpProcessor"
.end annotation


# static fields
.field private static final IGNORE_EVENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;->IGNORE_EVENT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static translateReason(Lcom/google/android/glass/os/WakeUpReason;)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # Lcom/google/android/glass/os/WakeUpReason;

    .prologue
    .line 326
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    invoke-virtual {p0}, Lcom/google/android/glass/os/WakeUpReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;->IGNORE_EVENT:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 328
    :pswitch_0
    const-string v0, "11"

    goto :goto_0

    .line 330
    :pswitch_1
    const-string v0, "7"

    goto :goto_0

    .line 333
    :pswitch_2
    const-string v0, "2"

    goto :goto_0

    .line 335
    :pswitch_3
    const-string v0, "9"

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 309
    const v0, 0xf42a7

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
    .line 314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .line 316
    .local v0, "data":[Ljava/lang/Object;
    invoke-static {}, Lcom/google/android/glass/os/WakeUpReason;->values()[Lcom/google/android/glass/os/WakeUpReason;

    move-result-object v5

    const/4 v4, 0x0

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v5, v4

    .line 317
    .local v1, "reason":Lcom/google/android/glass/os/WakeUpReason;
    invoke-static {v1}, Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;->translateReason(Lcom/google/android/glass/os/WakeUpReason;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "reasonString":Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v4, Lcom/google/glass/logging/EventLogUtils$DeviceWakingUpProcessor;->IGNORE_EVENT:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/userevent/UserEventAction;

    .line 320
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v5

    .line 319
    invoke-static {v4, v5, v6, v2}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_0
    return-object v3
.end method
