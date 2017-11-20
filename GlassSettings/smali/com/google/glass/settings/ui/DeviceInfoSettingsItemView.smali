.class public Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "DeviceInfoSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$2;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final checkinReceiver:Lcom/google/glass/settings/ui/CheckinReceiver;

.field private final developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

.field private final sandboxText:Landroid/widget/TextView;

.field private final serialText:Landroid/widget/TextView;

.field private final storageText:Landroid/widget/TextView;

.field update:Lcom/google/glass/update/AndroidUpdate;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final updateText:Landroid/widget/TextView;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v1, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->checkinReceiver:Lcom/google/glass/settings/ui/CheckinReceiver;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$layout;->device_info_settings_item:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, "headerText":Landroid/widget/TextView;
    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->updateText:Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->storageText:Landroid/widget/TextView;

    .line 79
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->serialText:Landroid/widget/TextView;

    .line 80
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_extra_info:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->sandboxText:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->getInstance()Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 83
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 84
    new-instance v1, Lcom/google/glass/update/AndroidUpdate;

    invoke-direct {v1, p1}, Lcom/google/glass/update/AndroidUpdate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update:Lcom/google/glass/update/AndroidUpdate;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update()V

    return-void
.end method

.method private toggleAdbEnable()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    iget-object v3, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v3}, Lcom/google/glass/settings/DeveloperSettingsHelper;->isAdbEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 289
    .local v0, "newAdbEnabled":Z
    :goto_0
    sget-object v3, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Toggling ADB enable to %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setAdbEnabled(Z)V

    .line 292
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->ADB_STATE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "s"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 293
    invoke-static {v5, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v3, v4, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 296
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, v3, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    if-eqz v0, :cond_2

    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_adb_debug_on:I

    .line 297
    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 299
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 300
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 303
    return-void

    .end local v0    # "newAdbEnabled":Z
    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    .line 292
    .restart local v0    # "newAdbEnabled":Z
    :cond_1
    const-string v1, "0"

    goto :goto_1

    .line 296
    :cond_2
    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_adb_debug_off:I

    goto :goto_2
.end method

.method private update()V
    .locals 24

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 91
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 92
    .local v8, "resources":Landroid/content/res/Resources;
    sget v19, Lcom/google/glass/settings/ui/R$color;->state_green:I

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 93
    .local v6, "green":I
    sget v19, Lcom/google/glass/settings/ui/R$color;->state_yellow:I

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 94
    .local v18, "yellow":I
    sget v19, Lcom/google/glass/settings/ui/R$color;->state_red:I

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 95
    .local v7, "red":I
    sget v19, Lcom/google/glass/settings/ui/R$color;->state_gray:I

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 98
    .local v5, "gray":I
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "serial":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 100
    sget v19, Lcom/google/glass/settings/ui/R$string;->deviceinfo_unknown:I

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->serialText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lcom/google/glass/settings/ui/R$string;->deviceinfo_serial:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update:Lcom/google/glass/update/AndroidUpdate;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/update/AndroidUpdate;->getName()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "availableUpdateName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 107
    const-string v19, "ro.build.version.glass"

    sget v20, Lcom/google/glass/settings/ui/R$string;->deviceinfo_unknown:I

    .line 108
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 107
    invoke-static/range {v19 .. v20}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 109
    .local v16, "versionMajor":Ljava/lang/String;
    const-string v19, "ro.build.version.minor.glass"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "versionMinor":Ljava/lang/String;
    move-object/from16 v15, v16

    .line 113
    .local v15, "version":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v19

    if-nez v19, :cond_1

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 114
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "-"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 116
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->updateText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lcom/google/glass/settings/ui/R$string;->deviceinfo_version_up_to_date:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->updateText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .end local v15    # "version":Ljava/lang/String;
    .end local v16    # "versionMajor":Ljava/lang/String;
    .end local v17    # "versionMinor":Ljava/lang/String;
    :goto_0
    const-string v19, "persist.search.server"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "sandbox":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    sget-object v19, Lcom/google/glass/util/Labs$Feature;->SPECIAL_GWS_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v19 .. v19}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->sandboxText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->sandboxText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_1
    new-instance v12, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v12, v3}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 133
    .local v12, "storageHelper":Lcom/google/glass/util/StorageHelper;
    const/4 v11, 0x1

    .line 134
    .local v11, "shouldStorageBeVisible":Z
    move v13, v7

    .line 135
    .local v13, "storageTextColor":I
    invoke-virtual {v12}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v4

    .line 136
    .local v4, "externalStorageState":Lcom/google/glass/util/StorageHelper$State;
    sget-object v19, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v20, "External storage state: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v4, v21, v22

    invoke-interface/range {v19 .. v21}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v19, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$2;->$SwitchMap$com$google$glass$util$StorageHelper$State:[I

    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 149
    const/4 v11, 0x0

    .line 152
    :goto_2
    if-eqz v11, :cond_4

    .line 153
    sget v19, Lcom/google/glass/settings/ui/R$string;->deviceinfo_storage_space:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 154
    invoke-virtual {v12}, Lcom/google/glass/util/StorageHelper;->getHumanReadableAvailableByteCount()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 153
    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 155
    .local v14, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->storageText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->storageText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->storageText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    .end local v14    # "text":Ljava/lang/String;
    :goto_3
    return-void

    .line 119
    .end local v4    # "externalStorageState":Lcom/google/glass/util/StorageHelper$State;
    .end local v9    # "sandbox":Ljava/lang/String;
    .end local v11    # "shouldStorageBeVisible":Z
    .end local v12    # "storageHelper":Lcom/google/glass/util/StorageHelper;
    .end local v13    # "storageTextColor":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->updateText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lcom/google/glass/settings/ui/R$string;->deviceinfo_version_update_available:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->updateText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 129
    .restart local v9    # "sandbox":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->sandboxText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 139
    .restart local v4    # "externalStorageState":Lcom/google/glass/util/StorageHelper$State;
    .restart local v11    # "shouldStorageBeVisible":Z
    .restart local v12    # "storageHelper":Lcom/google/glass/util/StorageHelper;
    .restart local v13    # "storageTextColor":I
    :pswitch_0
    move v13, v6

    .line 140
    goto :goto_2

    .line 142
    :pswitch_1
    move/from16 v13, v18

    .line 143
    goto :goto_2

    .line 146
    :pswitch_2
    move v13, v7

    .line 147
    goto :goto_2

    .line 159
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->storageText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onAttachedToWindow()V

    .line 166
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update()V

    .line 167
    iget-object v0, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->checkinReceiver:Lcom/google/glass/settings/ui/CheckinReceiver;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/CheckinReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 173
    iget-object v0, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->checkinReceiver:Lcom/google/glass/settings/ui/CheckinReceiver;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/CheckinReceiver;->unregister(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 241
    .local v4, "optionMenuId":I
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_install_update:I

    if-ne v4, v7, :cond_1

    .line 242
    iget-object v7, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update:Lcom/google/glass/update/AndroidUpdate;

    sget-object v9, Lcom/google/glass/update/AndroidUpdate$InstallType;->MANUAL:Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-virtual {v7, v9}, Lcom/google/glass/update/AndroidUpdate;->attemptInstall(Lcom/google/glass/update/AndroidUpdate$InstallType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    iget-object v7, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    const-string v10, "a"

    const-string v11, "um"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :goto_0
    move v7, v8

    .line 282
    :goto_1
    return v7

    .line 246
    :cond_0
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/sound/SoundManager;

    sget-object v9, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v7, v9}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 249
    :cond_1
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_debug_launcher:I

    if-ne v4, v7, :cond_2

    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v1, "launcherIntent":Landroid/content/Intent;
    const-string v7, "com.android.launcher"

    const-string v9, "com.android.launcher2.Launcher"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v7, v8

    .line 253
    goto :goto_1

    .line 254
    .end local v1    # "launcherIntent":Landroid/content/Intent;
    :cond_2
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_more_details:I

    if-ne v4, v7, :cond_3

    .line 255
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/google/glass/settings/ui/details/MoreDetailsActivity;

    invoke-direct {v3, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v3, "moreDetailsIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9, v3}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v7, v8

    .line 257
    goto :goto_1

    .line 258
    .end local v3    # "moreDetailsIntent":Landroid/content/Intent;
    :cond_3
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_menu_licenses:I

    if-ne v4, v7, :cond_4

    .line 259
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-direct {v2, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .local v2, "licensesIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v7, v8

    .line 261
    goto :goto_1

    .line 262
    .end local v2    # "licensesIntent":Landroid/content/Intent;
    :cond_4
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_regulatory_info:I

    if-ne v4, v7, :cond_5

    .line 263
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/google/glass/settings/ui/RegulatoryInfoActivity;

    invoke-direct {v5, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v5, "regulatoryIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v7, v8

    .line 265
    goto/16 :goto_1

    .line 266
    .end local v5    # "regulatoryIntent":Landroid/content/Intent;
    :cond_5
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_reset_device:I

    if-ne v4, v7, :cond_6

    .line 267
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/google/glass/settings/ui/FactoryResetActivity;

    invoke-direct {v6, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v6, "resetIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9, v6}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v7, v8

    .line 269
    goto/16 :goto_1

    .line 270
    .end local v6    # "resetIntent":Landroid/content/Intent;
    :cond_6
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_toggle_adb:I

    if-ne v4, v7, :cond_7

    .line 271
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->toggleAdbEnable()V

    move v7, v8

    .line 272
    goto/16 :goto_1

    .line 273
    :cond_7
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_feedback:I

    if-ne v4, v7, :cond_8

    .line 274
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/feedback/FeedbackHelper;->showUserFeedback(Landroid/content/Context;)V

    move v7, v8

    .line 275
    goto/16 :goto_1

    .line 276
    :cond_8
    sget v7, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_labs:I

    if-ne v4, v7, :cond_9

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v9, Lcom/google/glass/settings/ui/labs/LabsActivity;

    invoke-direct {v0, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "labsIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    move v7, v8

    .line 279
    goto/16 :goto_1

    .line 282
    .end local v0    # "labsIntent":Landroid/content/Intent;
    :cond_9
    invoke-super {p0, p1}, Lcom/google/glass/settings/ui/SettingsCard;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto/16 :goto_1
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 12
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 179
    if-eqz p3, :cond_0

    .line 181
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_menu_licenses:I

    sget-object v6, Lcom/google/android/glass/app/ContextualMenus$Command;->VIEW_LICENCES:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 182
    invoke-virtual {v6}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-interface {p2, v10, v5, v10, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 235
    :goto_0
    return v11

    .line 185
    :cond_0
    sget v5, Lcom/google/glass/settings/ui/R$menu;->device_info_settings_menu:I

    invoke-virtual {p1, v5, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_toggle_adb:I

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 187
    .local v2, "toggleAdbItem":Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v5}, Lcom/google/glass/settings/DeveloperSettingsHelper;->isAdbEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    sget v5, Lcom/google/glass/settings/ui/R$string;->deviceinfo_menu_adb_turn_off:I

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 189
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    iget-object v5, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update:Lcom/google/glass/update/AndroidUpdate;

    invoke-virtual {v5}, Lcom/google/glass/update/AndroidUpdate;->isAvailable()Z

    move-result v3

    .line 198
    .local v3, "updateAvailable":Z
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_install_update:I

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 199
    .local v4, "updateItem":Landroid/view/MenuItem;
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    if-eqz v3, :cond_1

    .line 201
    iget-object v5, p0, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->update:Lcom/google/glass/update/AndroidUpdate;

    sget-object v6, Lcom/google/glass/update/AndroidUpdate$InstallType;->MANUAL:Lcom/google/glass/update/AndroidUpdate$InstallType;

    invoke-virtual {v5, v6}, Lcom/google/glass/update/AndroidUpdate;->getInstallState(Lcom/google/glass/update/AndroidUpdate$InstallType;)Lcom/google/glass/update/AndroidUpdate$State;

    move-result-object v1

    .line 202
    .local v1, "state":Lcom/google/glass/update/AndroidUpdate$State;
    sget-object v5, Lcom/google/glass/update/AndroidUpdate$State;->READY:Lcom/google/glass/update/AndroidUpdate$State;

    invoke-virtual {v5, v1}, Lcom/google/glass/update/AndroidUpdate$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 203
    sget-object v5, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView$2;->$SwitchMap$com$google$glass$update$AndroidUpdate$State:[I

    invoke-virtual {v1}, Lcom/google/glass/update/AndroidUpdate$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 220
    .end local v1    # "state":Lcom/google/glass/update/AndroidUpdate$State;
    :cond_1
    :goto_2
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_debug_launcher:I

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/Labs$Feature;->DEBUG_LAUNCHER:Lcom/google/glass/util/Labs$Feature;

    .line 221
    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 223
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_feedback:I

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/Labs$Feature;->FB:Lcom/google/glass/util/Labs$Feature;

    .line 224
    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 225
    .local v0, "feedbackMenuItem":Landroid/view/MenuItem;
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v5

    .line 226
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/glass/settings/ui/R$string;->deviceinfo_menu_feedback_tip:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 225
    invoke-virtual {v5, v0, v6}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 228
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_more_details:I

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/Labs$Feature;->DIMD:Lcom/google/glass/util/Labs$Feature;

    .line 229
    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    sget v5, Lcom/google/glass/settings/ui/R$id;->deviceinfo_menu_labs:I

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v6, Lcom/google/glass/util/Labs$Feature;->DIL:Lcom/google/glass/util/Labs$Feature;

    .line 232
    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 191
    .end local v0    # "feedbackMenuItem":Landroid/view/MenuItem;
    .end local v3    # "updateAvailable":Z
    .end local v4    # "updateItem":Landroid/view/MenuItem;
    :cond_2
    sget v5, Lcom/google/glass/settings/ui/R$string;->deviceinfo_menu_adb_turn_on:I

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 192
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$string;->deviceinfo_menu_adb_disclaimer_tip:I

    invoke-virtual {v5, v2, v6}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;I)V

    goto/16 :goto_1

    .line 206
    .restart local v1    # "state":Lcom/google/glass/update/AndroidUpdate$State;
    .restart local v3    # "updateAvailable":Z
    .restart local v4    # "updateItem":Landroid/view/MenuItem;
    :pswitch_0
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$string;->deviceinfo_plugin_device_tip:I

    invoke-virtual {v5, v4, v6}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;I)V

    goto :goto_2

    .line 211
    :pswitch_1
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v5

    .line 212
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DeviceInfoSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/glass/settings/ui/R$string;->deviceinfo_charge_device_tip:I

    new-array v8, v11, [Ljava/lang/Object;

    const/16 v9, 0x32

    .line 213
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 212
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v5, v4, v6}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
