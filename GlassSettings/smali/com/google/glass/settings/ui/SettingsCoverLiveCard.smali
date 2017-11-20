.class public Lcom/google/glass/settings/ui/SettingsCoverLiveCard;
.super Lcom/google/glass/livecard/ViewToLiveCardContainer;
.source "SettingsCoverLiveCard.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final battery:Lcom/google/glass/util/BatteryHelper;

.field private final connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

.field private final gray:I

.field private final green:I

.field private final inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private final red:I

.field private final surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private final yellow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/livecard/ViewToLiveCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v2, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$1;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$1;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)V

    iput-object v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .line 51
    new-instance v2, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$2;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)V

    iput-object v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->green:I

    .line 123
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->red:I

    .line 124
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_yellow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->yellow:I

    .line 125
    sget v2, Lcom/google/glass/settings/ui/R$color;->state_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->gray:I

    .line 127
    new-instance v2, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 128
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 130
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$layout;->settings_cover_view:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, "extraInfo":Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateTextViewsText()V

    .line 136
    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->connectivityListener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)Lcom/google/glass/connectivity/InetConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->yellow:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->green:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->red:I

    return v0
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateBattery()V

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateConnectivity()V

    .line 164
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->invalidate()V

    .line 165
    return-void
.end method


# virtual methods
.method public getSurfaceHolderCallback()Landroid/view/SurfaceHolder$Callback;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    return-object v0
.end method

.method public updateBattery()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 241
    iget-object v7, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v3

    .line 244
    .local v3, "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    sget v7, Lcom/google/glass/settings/ui/R$id;->battery_state_image:I

    .line 245
    invoke-virtual {p0, v7}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/BatteryStateImageView;

    .line 246
    .local v0, "batteryStateImage":Lcom/google/glass/settings/ui/BatteryStateImageView;
    invoke-virtual {v0, v3}, Lcom/google/glass/settings/ui/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 249
    sget v7, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v7}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    .local v1, "batteryStateText":Landroid/widget/TextView;
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v7, :cond_0

    .line 253
    sget v7, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_charged:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget v7, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->green:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->invalidate()V

    .line 283
    return-void

    .line 257
    :cond_0
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v7, :cond_1

    .line 258
    sget v4, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_percent_charging:I

    .line 264
    .local v4, "text":I
    :goto_1
    iget v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    float-to-int v2, v7

    .line 265
    .local v2, "percent":I
    if-gt v2, v8, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_low:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "textStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const/16 v7, 0x1e

    if-le v2, v7, :cond_3

    .line 273
    iget v5, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->green:I

    .line 279
    .local v5, "textColor":I
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 260
    .end local v2    # "percent":I
    .end local v4    # "text":I
    .end local v5    # "textColor":I
    .end local v6    # "textStr":Ljava/lang/String;
    :cond_1
    sget v4, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_percent:I

    .restart local v4    # "text":I
    goto :goto_1

    .line 268
    .restart local v2    # "percent":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "textStr":Ljava/lang/String;
    goto :goto_2

    .line 274
    :cond_3
    const/16 v7, 0xa

    if-le v2, v7, :cond_4

    .line 275
    iget v5, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->yellow:I

    .restart local v5    # "textColor":I
    goto :goto_3

    .line 277
    .end local v5    # "textColor":I
    :cond_4
    iget v5, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->red:I

    .restart local v5    # "textColor":I
    goto :goto_3
.end method

.method public updateConnectivity()V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 176
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard$3;-><init>(Lcom/google/glass/settings/ui/SettingsCoverLiveCard;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method updateTextViewsText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 139
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 140
    .local v2, "title":Landroid/widget/TextView;
    sget v3, Lcom/google/glass/settings/ui/R$string;->settings:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    .local v0, "batteryState":Landroid/widget/TextView;
    sget v3, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_state_unknown:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 145
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget v3, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->gray:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    sget v3, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, "dataConnection":Landroid/widget/TextView;
    sget v3, Lcom/google/glass/settings/ui/R$string;->settings_cover_connection_no_data:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 151
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    iget v3, p0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->gray:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    return-void
.end method
