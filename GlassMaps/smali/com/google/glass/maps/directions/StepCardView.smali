.class public Lcom/google/glass/maps/directions/StepCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final TRANSIT_LINE_PLACEHOLDER:C = '\u2190'

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private departureTimeView:Landroid/widget/TextView;

.field private distanceDurationView:Landroid/widget/TextView;

.field private instructionTextView:Landroid/widget/TextView;

.field private schematicView:Lcom/google/glass/maps/SchematicView;

.field private travelModeView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/maps/directions/StepCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/StepCardView;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/glass/maps/directions/StepCardView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/StepCardView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/directions/StepCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/StepCardView;->initialize(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/directions/StepCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/StepCardView;->initialize(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/StepCardView;->initialize(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$layout;->transit_step_card:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    sget v0, Lcom/google/glass/maps/R$id;->departure_time:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->departureTimeView:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/google/glass/maps/R$id;->transit_mode_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/google/glass/maps/R$id;->distance_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->distanceDurationView:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/google/glass/maps/R$id;->instruction:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->instructionTextView:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/google/glass/maps/R$id;->schematic:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/StepCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/SchematicView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->schematicView:Lcom/google/glass/maps/SchematicView;

    .line 75
    return-void
.end method

.method private stylizeTransitLine(Lcom/google/glass/maps/directions/Step;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 7

    .prologue
    const/16 v6, 0xa0

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/16 v4, 0x21

    .line 181
    .line 182
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 183
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2190

    if-ne v2, v3, :cond_1

    .line 189
    :goto_1
    if-ne v0, v1, :cond_2

    .line 228
    :cond_0
    :goto_2
    return-void

    .line 182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Step;->useServerIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-wide v1, p1, Lcom/google/glass/maps/directions/Step;->iconId:J

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/IconsCache;->getIcon(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    add-int/lit8 v2, v0, 0x1

    const-string v3, " "

    invoke-virtual {p3, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 203
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 210
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 214
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Step;->getTextColor()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 216
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v3, p1, Lcom/google/glass/maps/directions/Step;->lineColor:I

    invoke-direct {v1, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 218
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    new-instance v1, Lcom/google/glass/maps/directions/StepCardView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/directions/StepCardView$1;-><init>(Lcom/google/glass/maps/directions/StepCardView;)V

    invoke-virtual {p3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public setStep(Lcom/google/glass/maps/directions/Step;I)V
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    iget v2, p1, Lcom/google/glass/maps/directions/Step;->stepType:I

    packed-switch v2, :pswitch_data_0

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    sget-object v2, Lcom/google/glass/maps/directions/StepCardView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unhandled step type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Lcom/google/glass/maps/directions/Step;->stepType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :goto_0
    iget-wide v2, p1, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 152
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v11, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcom/google/glass/maps/directions/StepCardView;->departureTimeView:Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p1, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->departureTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 162
    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->distanceDurationView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/google/glass/maps/directions/StepCardView;->distanceDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 170
    iget-object v1, p0, Lcom/google/glass/maps/directions/StepCardView;->instructionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->instructionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->schematicView:Lcom/google/glass/maps/SchematicView;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Step;->getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/SchematicView;->setSegments([Lcom/google/glass/maps/SchematicSegment;)V

    .line 177
    return-void

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Step;->getVehicleTypeIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$plurals;->transit_steps_distance_duration:I

    iget v2, p1, Lcom/google/glass/maps/directions/Step;->numOfStops:I

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p1, Lcom/google/glass/maps/directions/Step;->numOfStops:I

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 91
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/google/glass/maps/util/TextFormatter;->formatTime(I)Landroid/text/Spannable;

    move-result-object v4

    aput-object v4, v3, v7

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 98
    iget-object v0, p1, Lcom/google/glass/maps/directions/Step;->departurePlatform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 101
    :goto_4
    iget-object v3, p1, Lcom/google/glass/maps/directions/Step;->transitDirection:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/maps/R$string;->transit_board_towards:I

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/google/glass/maps/directions/Step;->departureAddress:Ljava/lang/String;

    aput-object v6, v5, v9

    aput-object v0, v5, v7

    const/16 v0, 0x2190

    .line 104
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v5, v8

    iget-object v0, p1, Lcom/google/glass/maps/directions/Step;->transitDirection:Ljava/lang/String;

    aput-object v0, v5, v11

    .line 102
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    :goto_5
    iget-object v0, p1, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 112
    iget-object v0, p1, Lcom/google/glass/maps/directions/Step;->arrivalPlatform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 114
    :goto_6
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/maps/R$string;->transit_get_off_at:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    aput-object v6, v5, v9

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/google/glass/maps/directions/Step;->transitLineName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/directions/StepCardView;->stylizeTransitLine(Lcom/google/glass/maps/directions/Step;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    move-object v0, v1

    move-object v1, v2

    .line 120
    goto/16 :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/glass/maps/R$string;->transit_platform:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/glass/maps/directions/Step;->departurePlatform:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/maps/R$string;->transit_board:I

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/google/glass/maps/directions/Step;->departureAddress:Ljava/lang/String;

    aput-object v6, v5, v9

    aput-object v0, v5, v7

    const/16 v0, 0x2190

    .line 107
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v5, v8

    .line 106
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/glass/maps/R$string;->transit_platform:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/glass/maps/directions/Step;->arrivalPlatform:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/maps/R$drawable;->stepicon_walk:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-wide v0, p1, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$string;->walk_step_distance_duration:I

    new-array v2, v8, [Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/glass/maps/directions/Step;->distanceMeters:J

    long-to-int v4, v4

    invoke-virtual {v3, v4, p2, v9}, Lcom/google/glass/maps/util/TextFormatter;->formatDistance(IIZ)Landroid/text/Spannable;

    move-result-object v3

    aput-object v3, v2, v9

    .line 130
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/google/glass/maps/util/TextFormatter;->formatTime(I)Landroid/text/Spannable;

    move-result-object v3

    aput-object v3, v2, v7

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_7
    iget-object v1, p1, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 139
    goto/16 :goto_0

    .line 132
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/StepCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$string;->walk_step_duration:I

    new-array v2, v7, [Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/google/glass/maps/util/TextFormatter;->formatTime(I)Landroid/text/Spannable;

    move-result-object v3

    aput-object v3, v2, v9

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->travelModeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p1, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/google/glass/maps/directions/StepCardView;->departureTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 165
    :cond_6
    iget-object v1, p0, Lcom/google/glass/maps/directions/StepCardView;->distanceDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/google/glass/maps/directions/StepCardView;->instructionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
