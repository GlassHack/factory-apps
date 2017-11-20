.class public Lcom/google/glass/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field public static final ACTION_GO_TO_SETTINGS:Ljava/lang/String; = "com.google.glass.action.ACTION_GO_TO_SETTINGS"

.field public static final ACTION_TO_ID:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BATTERY_ID:I = 0x0

.field public static final BLUETOOTH_ID:I = 0x2

.field public static final CLOUD_SYNC_ID:I = 0xa

.field public static final DEFAULT_ID:I = 0x0

.field public static final DEVELOPER_SETTINGS_ID:I = 0x10

.field public static final DEVICE_COVER_ID:I = 0x11

.field public static final DEVICE_INFO_ID:I = 0x3

.field public static final ENCRYPTION_ID:I = 0x17

.field public static final EXTRA_SETTINGS_ID:Ljava/lang/String; = "settings_id"

.field public static final EYE_COVER_ID:I = 0x13

.field public static final FACTORY_RESET_ID:I = 0x14

.field public static final GPS_DEBUG_ID:I = 0x7

.field public static final HDR_ID:I = 0x16

.field public static final HEAD_COVER_ID:I = 0x12

.field public static final HEAD_WAKE_ID:I = 0x4

.field public static final LANGUAGE_ID:I = 0xc

.field public static final LOCKSCREEN_ID:I = 0x9

.field public static final LOOK_AT_SCREEN_ID:I = 0xd

.field public static final NUDGE_TO_DISMISS_ID:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ON_HEAD_DETECTION_ID:I = 0x6

.field public static final READ_ALOUD_MODE_ID:I = 0xe

.field public static final RESTART_SETUP:I = 0xb

.field public static final USB_CONNECTIVITY_ID:I = 0x15

.field public static final VOLUME_ID:I = 0x8

.field public static final WIFI_ID:I = 0x1

.field public static final WINK_TO_PHOTO_ID:I = 0x5


# instance fields
.field private final context:Landroid/content/Context;

.field private final idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "android.settings.WIFI_SETTINGS"

    const/4 v2, 0x1

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    const/4 v2, 0x2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "android.settings.SOUND_SETTINGS"

    const/16 v2, 0x8

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SettingsHelper;->ACTION_TO_ID:Lcom/google/common/collect/ImmutableMap;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v1, "settings"

    invoke-direct {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    .line 64
    iput-object p1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public createSettingsIntent(I)Landroid/content/Intent;
    .locals 2
    .param p1, "settingsId"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ACTION_GO_TO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    const-string v1, "settings_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    return-object v0
.end method

.method public createSettingsItemId(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goToSettings()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    .line 70
    return-void
.end method

.method public goToSettings(I)V
    .locals 3
    .param p1, "settingsId"    # I

    .prologue
    .line 74
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/glass/util/SettingsHelper;->createSettingsIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public idFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return v0

    .line 82
    :cond_0
    sget-object v1, Lcom/google/glass/util/SettingsHelper;->ACTION_TO_ID:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    sget-object v0, Lcom/google/glass/util/SettingsHelper;->ACTION_TO_ID:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "settings_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isSettingsItemId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
