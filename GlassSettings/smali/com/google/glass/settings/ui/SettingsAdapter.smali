.class public Lcom/google/glass/settings/ui/SettingsAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SettingsAdapter.java"


# static fields
.field private static final ADD_REMAINING_VIEWS_DELAY_MILLIS:I = 0x1f4

.field private static final END_OF_LIST_ID:I = -0x1


# instance fields
.field private final addRemainingViewsRunnable:Ljava/lang/Runnable;

.field private final context:Landroid/app/Activity;

.field private final developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

.field private final handler:Landroid/os/Handler;

.field private final helper:Lcom/google/glass/util/SettingsHelper;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/SettingsCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 53
    new-instance v0, Lcom/google/glass/settings/ui/SettingsAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/SettingsAdapter$1;-><init>(Lcom/google/glass/settings/ui/SettingsAdapter;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->addRemainingViewsRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    .line 62
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->helper:Lcom/google/glass/util/SettingsHelper;

    .line 63
    invoke-static {}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->getInstance()Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    new-instance v1, Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-direct {v1, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->handler:Landroid/os/Handler;

    .line 73
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsAdapter;->addRemainingViews()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->addRemainingViewsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/SettingsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsAdapter;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsAdapter;->addRemainingViews()V

    return-void
.end method

.method private addRemainingViews()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 88
    const/16 v0, 0x11

    new-instance v1, Lcom/google/glass/settings/ui/HIDSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/HIDSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 89
    const/4 v0, 0x2

    new-instance v1, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 91
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->DSC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/16 v0, 0xf

    new-instance v1, Lcom/google/glass/settings/ui/DeveloperSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/DeveloperSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 95
    :cond_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SC_MS_MD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/16 v0, 0x9

    new-instance v1, Lcom/google/glass/settings/ui/SyncSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 98
    :cond_2
    const/4 v0, 0x3

    new-instance v1, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 100
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NDG:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const/16 v0, 0xe

    new-instance v1, Lcom/google/glass/settings/ui/NudgeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/NudgeSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 104
    :cond_3
    const/4 v0, 0x5

    new-instance v1, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 106
    const/16 v0, 0x8

    new-instance v1, Lcom/google/glass/settings/ui/LockscreenItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/LockscreenItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 108
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LASER_RLU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    .line 109
    invoke-static {v0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/eye/EyeGestureManager;->isSupported(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    const/16 v0, 0xc

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 113
    :cond_4
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    .line 114
    invoke-static {v0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/eye/EyeGestureManager;->isSupported(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    const/4 v0, 0x4

    new-instance v1, Lcom/google/glass/settings/ui/WinkSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/WinkSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 118
    :cond_5
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_DEBUG_CARD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    const/4 v0, 0x6

    new-instance v1, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 123
    :cond_6
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SRS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    const/16 v0, 0xa

    new-instance v1, Lcom/google/glass/settings/ui/RestartSetupItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/RestartSetupItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 127
    :cond_7
    const/4 v0, 0x7

    new-instance v1, Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 129
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LCS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 130
    const/16 v0, 0xb

    new-instance v1, Lcom/google/glass/settings/ui/LanguageSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/LanguageSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 133
    :cond_8
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->RA:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    const/16 v0, 0xd

    new-instance v1, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/ReadAloudModeSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 137
    :cond_9
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NWTN:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    :cond_a
    const/16 v0, 0x10

    new-instance v1, Lcom/google/glass/settings/ui/NowtownSettingsItemView;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/NowtownSettingsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 143
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method


# virtual methods
.method addView(ILcom/google/glass/settings/ui/SettingsCard;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "view"    # Lcom/google/glass/settings/ui/SettingsCard;

    .prologue
    .line 172
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;I)V

    .line 173
    return-void
.end method

.method addView(ILcom/google/glass/settings/ui/SettingsCard;I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "view"    # Lcom/google/glass/settings/ui/SettingsCard;
    .param p3, "insertAfterId"    # I

    .prologue
    .line 184
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 185
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    new-instance v2, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    invoke-direct {v2, v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 186
    .local v2, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {v3, p1}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 187
    sget v3, Lcom/google/glass/settings/ui/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p2, v3, v2}, Lcom/google/glass/settings/ui/SettingsCard;->setTag(ILjava/lang/Object;)V

    .line 189
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/glass/settings/ui/SettingsAdapter;->getIdPosition(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 194
    .local v1, "position":I
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 195
    iget-object v3, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v3, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addViewForTest(ILcom/google/glass/settings/ui/SettingsCard;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "view"    # Lcom/google/glass/settings/ui/SettingsCard;

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/settings/ui/SettingsAdapter;->addView(ILcom/google/glass/settings/ui/SettingsCard;)V

    .line 225
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIdPosition(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 246
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "stringId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 247
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 257
    move-object v1, p1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 258
    .local v1, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 258
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroyed()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->addRemainingViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public refreshSettingsUi()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/SettingsCard;

    .line 153
    .local v0, "view":Lcom/google/glass/settings/ui/SettingsCard;
    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    goto :goto_0

    .line 155
    .end local v0    # "view":Lcom/google/glass/settings/ui/SettingsCard;
    :cond_0
    return-void
.end method

.method removeView(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 204
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 205
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->helper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/SettingsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 207
    .local v1, "position":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 209
    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsAdapter;->views:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    :cond_0
    return-void
.end method
