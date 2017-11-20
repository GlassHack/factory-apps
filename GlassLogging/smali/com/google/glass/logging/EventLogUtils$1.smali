.class synthetic Lcom/google/glass/logging/EventLogUtils$1;
.super Ljava/lang/Object;
.source "EventLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$glass$logging$NotificationTrigger:[I

.field static final synthetic $SwitchMap$com$google$android$glass$os$WakeUpReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 436
    invoke-static {}, Lcom/google/android/glass/logging/NotificationTrigger;->values()[Lcom/google/android/glass/logging/NotificationTrigger;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$logging$NotificationTrigger:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$logging$NotificationTrigger:[I

    sget-object v1, Lcom/google/android/glass/logging/NotificationTrigger;->HEAD_LOOK_UP:Lcom/google/android/glass/logging/NotificationTrigger;

    invoke-virtual {v1}, Lcom/google/android/glass/logging/NotificationTrigger;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$logging$NotificationTrigger:[I

    sget-object v1, Lcom/google/android/glass/logging/NotificationTrigger;->LOOK_AT_SCREEN:Lcom/google/android/glass/logging/NotificationTrigger;

    invoke-virtual {v1}, Lcom/google/android/glass/logging/NotificationTrigger;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$logging$NotificationTrigger:[I

    sget-object v1, Lcom/google/android/glass/logging/NotificationTrigger;->TAP:Lcom/google/android/glass/logging/NotificationTrigger;

    invoke-virtual {v1}, Lcom/google/android/glass/logging/NotificationTrigger;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 326
    :goto_2
    invoke-static {}, Lcom/google/android/glass/os/WakeUpReason;->values()[Lcom/google/android/glass/os/WakeUpReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    :try_start_3
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    sget-object v1, Lcom/google/android/glass/os/WakeUpReason;->DEVICE_DONNED:Lcom/google/android/glass/os/WakeUpReason;

    invoke-virtual {v1}, Lcom/google/android/glass/os/WakeUpReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    sget-object v1, Lcom/google/android/glass/os/WakeUpReason;->HEAD_LOOK_UP:Lcom/google/android/glass/os/WakeUpReason;

    invoke-virtual {v1}, Lcom/google/android/glass/os/WakeUpReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    sget-object v1, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_SWIPE_LEFT:Lcom/google/android/glass/os/WakeUpReason;

    invoke-virtual {v1}, Lcom/google/android/glass/os/WakeUpReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    sget-object v1, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_SWIPE_RIGHT:Lcom/google/android/glass/os/WakeUpReason;

    invoke-virtual {v1}, Lcom/google/android/glass/os/WakeUpReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/glass/logging/EventLogUtils$1;->$SwitchMap$com$google$android$glass$os$WakeUpReason:[I

    sget-object v1, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_TAP:Lcom/google/android/glass/os/WakeUpReason;

    invoke-virtual {v1}, Lcom/google/android/glass/os/WakeUpReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    .line 436
    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
