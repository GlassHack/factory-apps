.class public final Lcom/google/glass/settings/ui/ViewLicensesActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ViewLicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final ACTIVITY_NAME_LIGHTCYCLE:Ljava/lang/String; = "com.google.android.apps.lightcycle.glass.GlassPanoramaViewActivity"

.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final LIGHTCYCLE_EXTRA_REQUIRED_STRING:Ljava/lang/String; = "required_string"

.field private static final MENU_ID_MEET_THE_TEAM:I = 0x1

.field private static final PACKAGE_NAME_LIGHTCYCLE:Ljava/lang/String; = "com.google.android.apps.lightcycle.glass"

.field private static final TIMELINE_ITEM_ID:Ljava/lang/String; = "com.google.glass.settings.ui.ViewLicensesActivity.LICENSE_ITEM_ID"


# instance fields
.field private indexWebView:Lcom/google/glass/html/PagedWebView;

.field private isViewingSpecificLicense:Z

.field private licenseHasLoaded:Z

.field private licenseLoader:Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;

.field private licenseMessage:Landroid/widget/TextView;

.field private licenseSwitcher:Landroid/widget/ViewSwitcher;

.field private licenseWebView:Lcom/google/glass/html/PagedWebView;

.field private lightcycleIntent:Landroid/content/Intent;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

.field private tapCount:I

.field private final tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;

.field private webViewHolder:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 42
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 74
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/glass/sound/SoundManager$SoundId;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE1:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE2:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE3:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE4:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE5:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE6:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE7:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE_RESOLVE:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/ViewLicensesActivity;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->reformatHtml(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/html/PagedWebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseWebView:Lcom/google/glass/html/PagedWebView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/settings/ui/ViewLicensesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->isViewingSpecificLicense:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/settings/ui/ViewLicensesActivity;)[Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/settings/ui/ViewLicensesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/settings/ui/ViewLicensesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapCount:I

    return p1
.end method

.method static synthetic access$1308(Lcom/google/glass/settings/ui/ViewLicensesActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/ViewLicensesActivity;Landroid/util/Pair;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->showIndex(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->showError()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->hideSlider()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->webViewHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/html/PagedWebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->indexWebView:Lcom/google/glass/html/PagedWebView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Landroid/widget/ViewSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/settings/ui/ViewLicensesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseHasLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/settings/ui/ViewLicensesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->showLicense(Ljava/lang/String;)V

    return-void
.end method

.method private hideSlider()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$Indeterminate;->hide()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 156
    :cond_0
    return-void
.end method

.method private reformatHtml(Ljava/lang/String;)Landroid/util/Pair;
    .locals 17
    .param p1, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v14, "topLevel":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 222
    .local v13, "licenseTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, "<td class=\"same-license\">(.+?)</td>"

    const/16 v16, 0x20

    .line 223
    invoke-static/range {v15 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 224
    .local v4, "fullLicensePattern":Ljava/util/regex/Pattern;
    const-string v15, "<div class=\"label\">(.+?)</div>"

    const/16 v16, 0x20

    .line 225
    invoke-static/range {v15 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 226
    .local v8, "labelPattern":Ljava/util/regex/Pattern;
    const-string v15, "<div class=\"file-list\">(.+?)</div>"

    const/16 v16, 0x20

    .line 227
    invoke-static/range {v15 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 228
    .local v2, "fileListPattern":Ljava/util/regex/Pattern;
    const-string v15, "<pre class=\"license-text\">(.+?)</pre>"

    const/16 v16, 0x20

    .line 229
    invoke-static/range {v15 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 231
    .local v12, "licenseTextPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 232
    .local v3, "fullLicenseMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 233
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 236
    .local v9, "license":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 237
    .local v7, "labelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 238
    .local v1, "fileListMatcher":Ljava/util/regex/Matcher;
    const-string v15, "<article><section><p class=\"text-x-small\">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    .line 240
    .local v6, "haveLabel":Z
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 241
    .local v5, "haveFileList":Z
    if-eqz v6, :cond_0

    .line 242
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 245
    const-string v15, "<br/>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1
    if-eqz v5, :cond_2

    .line 248
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    const-string v15, "</p></section></article>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v10, "licenseText":Ljava/lang/StringBuilder;
    const-string v15, "<article class=\"auto-paginate\"><p class=\"text-x-small\">"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 256
    .local v11, "licenseTextMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 257
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_3
    const-string v15, "</p></article>"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v1    # "fileListMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "haveFileList":Z
    .end local v6    # "haveLabel":Z
    .end local v7    # "labelMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "license":Ljava/lang/String;
    .end local v10    # "licenseText":Ljava/lang/StringBuilder;
    .end local v11    # "licenseTextMatcher":Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    return-object v15
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseMessage:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/settings/ui/R$string;->deviceinfo_licenses_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->hideSlider()V

    .line 348
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 349
    return-void
.end method

.method private showIndex(Landroid/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "licenses":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 268
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 269
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 270
    const-string v0, "com.google.glass.settings.ui.ViewLicensesActivity.LICENSE_ITEM_ID"

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 271
    new-instance v5, Lcom/google/glass/settings/ui/ViewLicensesActivity$1;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity$1;-><init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V

    .line 288
    .local v5, "countListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    new-instance v9, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;

    invoke-direct {v9, p0, p1}, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;-><init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;Landroid/util/Pair;)V

    .line 302
    .local v9, "selectedListener":Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->indexWebView:Lcom/google/glass/html/PagedWebView;

    const/4 v3, 0x1

    move v4, v2

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->indexWebView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0, v9}, Lcom/google/glass/html/PagedWebView;->setPageSelectedListener(Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;)V

    .line 304
    return-void
.end method

.method private showLicense(Ljava/lang/String;)V
    .locals 10
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 309
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 310
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 311
    const-string v0, "com.google.glass.settings.ui.ViewLicensesActivity.LICENSE_ITEM_ID"

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 312
    new-instance v5, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity$3;-><init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V

    .line 326
    .local v5, "countListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    new-instance v9, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;

    invoke-direct {v9, p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;-><init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V

    .line 341
    .local v9, "selectedListener":Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseWebView:Lcom/google/glass/html/PagedWebView;

    const/4 v3, 0x1

    move v4, v2

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseWebView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0, v9}, Lcom/google/glass/html/PagedWebView;->setPageSelectedListener(Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;)V

    .line 343
    return-void
.end method

.method private startSlider()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseMessage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/Slider;->startIndeterminate()Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->slider:Lcom/google/android/glass/widget/Slider$Indeterminate;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$Indeterminate;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseHasLoaded:Z

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 392
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 101
    sget v1, Lcom/google/glass/settings/ui/R$id;->license_switcher:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;

    .line 102
    sget v1, Lcom/google/glass/settings/ui/R$id;->license_message:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseMessage:Landroid/widget/TextView;

    .line 103
    sget v1, Lcom/google/glass/settings/ui/R$id;->web_view_holder:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->webViewHolder:Landroid/widget/FrameLayout;

    .line 106
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/CachedBitmapFactory;

    .line 107
    .local v0, "bitmapFactory":Lcom/google/glass/util/CachedBitmapFactory;
    new-instance v1, Lcom/google/glass/html/PagedWebView;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->indexWebView:Lcom/google/glass/html/PagedWebView;

    .line 108
    new-instance v1, Lcom/google/glass/html/PagedWebView;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseWebView:Lcom/google/glass/html/PagedWebView;

    .line 110
    iput-boolean v3, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseHasLoaded:Z

    .line 111
    new-instance v1, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;

    const-string v2, "/system/etc/NOTICE.html.gz"

    invoke-direct {v1, p0, v2}, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;-><init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseLoader:Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;

    .line 112
    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseLoader:Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.lightcycle.glass"

    const-string v3, "com.google.android.apps.lightcycle.glass.GlassPanoramaViewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    const-string v2, "required_string"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 353
    sget v0, Lcom/google/glass/settings/ui/R$string;->meet_the_team:I

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_people_50:I

    .line 354
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 355
    return v2
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseLoader:Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity$LicenseFileLoader;->cancel(Z)Z

    .line 136
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->webViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->indexWebView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->release()V

    .line 138
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->licenseWebView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->release()V

    .line 139
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 140
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v1, 0x0

    .line 373
    iput v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapCount:I

    .line 375
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->isViewingSpecificLicense:Z

    if-eqz v0, :cond_0

    .line 376
    iput-boolean v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->isViewingSpecificLicense:Z

    .line 379
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 380
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->webViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 381
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->webViewHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->indexWebView:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->finish()V

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPauseInternal()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->hideSlider()V

    .line 130
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 131
    return-void
.end method

.method public onResumeInternal()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity;->tapCount:I

    .line 124
    invoke-direct {p0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->startSlider()V

    .line 125
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/google/glass/settings/ui/R$layout;->view_licenses_activity:I

    return v0
.end method
