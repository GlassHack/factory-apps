.class public Lcom/google/glass/maps/NavigationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bd;


# static fields
.field static final GET_DIRECTIONS_TIMEOUT:J

.field private static final HEARTBEAT_INTERVAL_MS:I = 0x7d0

.field private static final MIN_DESTINATION_VIEW_MS:I = 0xfa0

.field private static final MIN_LONG_DISTANCE_STEP_METERS:I = 0x1324

.field private static final ROUTE_COMPLETION_STOP_DELAY_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "NavigationManager"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final context:Landroid/content/Context;

.field private destination:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final exitRunnable:Ljava/lang/Runnable;

.field private guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

.field hasShownPowerTip:Z

.field private isLiveCardBeingPublished:Z

.field private isPlayingChime:Z

.field private isRequestingNewRoute:Z

.field private lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

.field private liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field private final locationSource:Lcom/google/android/maps/driveabout/location/t;

.field private final maxCueWidth:I

.field private final navigation:Lcom/google/glass/navlib/Navigation;

.field private final ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private refinements:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final scheduler:Lcom/google/glass/maps/util/Scheduler;

.field private selectDestinationStartTime:J

.field private shouldShowConfirmation:Z

.field private shouldShowRouteOverview:Z

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private startNavigatingTime:J

.field private final textFormatter:Lcom/google/glass/maps/util/TextFormatter;

.field private final textPaint:Landroid/text/TextPaint;

.field private final uiManager:Lcom/google/glass/maps/UserInterfaceManager;

.field private final updateUiListener:Lcom/google/android/maps/driveabout/store/bd;

.field private final updateUiRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/maps/NavigationManager;->GET_DIRECTIONS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/location/t;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 10

    .prologue
    .line 157
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    new-instance v6, Lcom/google/glass/maps/util/Scheduler$Impl;

    invoke-direct {v6}, Lcom/google/glass/maps/util/Scheduler$Impl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/maps/NavigationManager;-><init>(Landroid/content/Context;Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/location/t;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/time/Clock;Lcom/google/glass/maps/util/Scheduler;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/location/t;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/time/Clock;Lcom/google/glass/maps/util/Scheduler;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 3

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/google/glass/maps/NavigationManager$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationManager$1;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->updateUiListener:Lcom/google/android/maps/driveabout/store/bd;

    .line 122
    new-instance v0, Lcom/google/glass/maps/NavigationManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationManager$2;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->updateUiRunnable:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/google/glass/maps/NavigationManager$3;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationManager$3;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->exitRunnable:Ljava/lang/Runnable;

    .line 136
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    .line 165
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    .line 166
    iput-object p5, p0, Lcom/google/glass/maps/NavigationManager;->clock:Lcom/google/glass/time/Clock;

    .line 167
    iput-object p6, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    .line 168
    iput-object p2, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    .line 169
    iput-object p3, p0, Lcom/google/glass/maps/NavigationManager;->locationSource:Lcom/google/android/maps/driveabout/location/t;

    .line 170
    iput-object p7, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    .line 171
    invoke-static {}, Lcom/google/glass/maps/util/TextFormatter;->getInstance()Lcom/google/glass/maps/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    .line 172
    iput-object p4, p0, Lcom/google/glass/maps/NavigationManager;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 173
    iput-object p8, p0, Lcom/google/glass/maps/NavigationManager;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 174
    iput-object p9, p0, Lcom/google/glass/maps/NavigationManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    .line 176
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textPaint:Landroid/text/TextPaint;

    .line 177
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textPaint:Landroid/text/TextPaint;

    const-string v1, "sans-serif-thin"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$dimen;->large_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$dimen;->max_cue_width_for_formatting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/NavigationManager;->maxCueWidth:I

    .line 183
    new-instance v0, Lcom/google/glass/maps/NavigationManager$4;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationManager$4;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    invoke-interface {p2, v0}, Lcom/google/glass/navlib/Navigation;->setNavigationListener(Lcom/google/glass/navlib/NavigationListener;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/NavigationManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->updateUiRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/util/Scheduler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/maps/NavigationManager;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationManager;->isPlayingChime:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/navlib/Navigation;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/UserInterfaceManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->handleNewRoute()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->handleOrientationChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->handleGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->handleApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/NavigationManager;->handleRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/NavigationManager$GuidanceState;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/maps/NavigationManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getAddressString(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 646
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_0
    if-eqz v1, :cond_1

    .line 653
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 654
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDestination(Lcom/google/android/maps/driveabout/nav/ao;)Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 603
    :goto_0
    return-object v0

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getStepNotificationMessage(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 705
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 706
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    .line 709
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v2

    .line 708
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/glass/maps/util/TextFormatter;->formatDistance(IIZ)Landroid/text/Spannable;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/R$string;->in_distance_do:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleString(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 665
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 667
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getTrafficColor(Landroid/content/res/Resources;I)I
    .locals 1

    .prologue
    .line 631
    packed-switch p2, :pswitch_data_0

    .line 640
    sget v0, Lcom/google/glass/maps/R$color;->traffic_status_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    .line 633
    :pswitch_0
    sget v0, Lcom/google/glass/maps/R$color;->traffic_status_green:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 635
    :pswitch_1
    sget v0, Lcom/google/glass/maps/R$color;->traffic_status_yellow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 638
    :pswitch_2
    sget v0, Lcom/google/glass/maps/R$color;->traffic_status_red:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getAlerter()Lcom/google/glass/navlib/Alerter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    .line 734
    invoke-interface {v1}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v1

    .line 733
    invoke-interface {v0, p1, p2, v1}, Lcom/google/glass/navlib/Alerter;->generateAlertForGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;II)V

    .line 735
    return-void
.end method

.method private handleGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 738
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 740
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v1

    .line 743
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 745
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 746
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 751
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/glass/maps/NavigationManager;->isPlayingChime:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 752
    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->isPlayingChime:Z

    .line 753
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->soundManager:Lcom/google/glass/sound/SoundManager;

    new-instance v3, Lcom/google/glass/maps/NavigationManager$6;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/glass/maps/NavigationManager$6;-><init>(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;II)V

    invoke-virtual {v2, v0, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I

    .line 768
    :goto_1
    return-void

    .line 747
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 749
    :cond_2
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getAlerter()Lcom/google/glass/navlib/Alerter;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/glass/navlib/Alerter;->triggerAlertForGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;II)V

    goto :goto_1
.end method

.method private handleNewRoute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 714
    iput-boolean v5, p0, Lcom/google/glass/maps/NavigationManager;->isRequestingNewRoute:Z

    .line 716
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    .line 723
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 724
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/R$string;->directions_to:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationManager;->getAddressString(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-direct {p0, v4, v0, v4, v4}, Lcom/google/glass/maps/NavigationManager;->showActiveItem(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_1
    return-void
.end method

.method private handleOrientationChange()V
    .locals 3

    .prologue
    .line 808
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 809
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->shouldUseOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getOrientation()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v0

    .line 811
    new-instance v1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v2}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 812
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    .line 813
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 814
    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    if-nez v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->setOrientation(Lcom/google/android/maps/driveabout/location/z;)V

    .line 818
    :cond_0
    return-void
.end method

.method private handleRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    .line 773
    sget-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->REFINEMENT_NEEDED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne p1, v0, :cond_1

    .line 774
    const-string v0, "NavigationManager"

    const-string v1, "Refinement required."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iput-object p2, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const-string v0, "NavigationManager"

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Route Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager;->lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    .line 780
    sget-object v0, Lcom/google/glass/maps/NavigationManager$7;->$SwitchMap$com$google$glass$navlib$NavigationListener$RouteFailureReason:[I

    invoke-virtual {p1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 798
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/R$string;->error_generic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 800
    :goto_1
    if-eqz v1, :cond_0

    .line 801
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    sget-object v0, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 802
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->logNavigationError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/R$string;->error_network_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 784
    goto :goto_1

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/R$string;->error_offline_routing_failure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 787
    goto :goto_1

    .line 789
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/R$string;->error_navigation_not_supported:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 790
    goto :goto_1

    .line 792
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/maps/R$string;->error_destination_not_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 793
    goto :goto_1

    .line 795
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getRoutingErrorForCurrentTravelMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 796
    goto :goto_1

    .line 801
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private hideActiveItem()V
    .locals 2

    .prologue
    .line 874
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    goto :goto_0
.end method

.method private logNavigationEnd()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->getDurationInSeconds()I

    move-result v2

    .line 920
    sget-object v0, Lcom/google/glass/maps/NavigationManager$7;->$SwitchMap$com$google$glass$maps$NavigationManager$GuidanceState:[I

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 945
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    .line 952
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v6

    .line 953
    if-eqz v6, :cond_9

    .line 956
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->b()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 957
    :goto_1
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->c()I

    move-result v4

    if-ltz v4, :cond_6

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 959
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v5

    .line 960
    if-eqz v5, :cond_8

    .line 961
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 964
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v6

    .line 965
    if-eqz v6, :cond_7

    .line 966
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, v3

    move-object v3, v0

    .line 970
    :goto_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/GlassUserEventLogger;->logNavigationEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 972
    return-void

    .line 922
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-nez v0, :cond_0

    .line 923
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_GETTING_DIRECTIONS:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne v0, v1, :cond_1

    .line 925
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->NETWORK_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne v0, v1, :cond_2

    .line 927
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    .line 928
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    if-ne v0, v1, :cond_3

    .line 929
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTING_ERROR:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    .line 931
    :cond_3
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->UNKNOWN_FAILURE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    .line 935
    :pswitch_1
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_SELECT_DESTINATION:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    .line 939
    :pswitch_2
    const/16 v0, 0x3c

    if-ge v2, v0, :cond_4

    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->CANCEL_EARLY_IN_ROUTE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    :goto_5
    move-object v1, v0

    .line 940
    goto :goto_0

    .line 939
    :cond_4
    sget-object v0, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_5

    .line 942
    :pswitch_3
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->ROUTE_COMPLETE:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 956
    goto :goto_1

    :cond_6
    move-object v4, v3

    .line 957
    goto :goto_2

    :cond_7
    move-object v6, v3

    move-object v3, v0

    goto :goto_4

    :cond_8
    move-object v5, v3

    goto :goto_3

    :cond_9
    move-object v6, v3

    move-object v5, v3

    move-object v4, v3

    goto :goto_4

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private shouldKeepScreenOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 612
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 626
    :cond_1
    :goto_0
    return v0

    .line 617
    :cond_2
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_1

    .line 619
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v2}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    .line 620
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 621
    goto :goto_0
.end method

.method private shouldShowRerouting(Lcom/google/android/maps/driveabout/nav/p;)Z
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->isRerouting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->isRequestingNewRoute:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowStayOnRoad(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z
    .locals 3

    .prologue
    .line 673
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g()Lcom/google/android/maps/driveabout/model/ao;

    move-result-object v0

    .line 674
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    const/16 v2, 0x1324

    if-le v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->g()I

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseOrientation()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 821
    const/4 v0, 0x0

    .line 823
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v2}, Lcom/google/glass/navlib/Navigation;->getOrientation()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 824
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v2

    .line 827
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->NV_CPS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 843
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v1, v0}, Lcom/google/glass/navlib/Navigation;->enableOrientationUpdates(Z)V

    .line 845
    return v0

    .line 832
    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 835
    :cond_4
    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v2}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    .line 836
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 837
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v3, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v2, v3, :cond_2

    :cond_6
    move v0, v1

    .line 838
    goto :goto_0
.end method

.method private showActiveItem(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 851
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams;

    sget-object v1, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->NAVIGATION:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    invoke-direct {v0, v1}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V

    .line 857
    if-eqz p1, :cond_2

    .line 858
    invoke-virtual {p1}, Lcom/google/glass/maps/IconDescriptor;->toContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActiveItemParams;->setIconUri(Ljava/lang/String;)V

    .line 860
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/glass/maps/NavigationActiveItemParams;->setMessage(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, p3}, Lcom/google/glass/maps/NavigationActiveItemParams;->setDestinationName(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p4}, Lcom/google/glass/maps/NavigationActiveItemParams;->setTimeString(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    invoke-static {v1, v0}, Lcom/google/glass/maps/util/Comparisons;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 869
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private showStayOnRoad(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 4

    .prologue
    .line 682
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 683
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    invoke-virtual {v1, v0, p0}, Lcom/google/glass/maps/util/TextFormatter;->formatStayOnRoadPrimaryText(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    .line 687
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v2

    const/4 v3, 0x0

    .line 686
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/util/TextFormatter;->formatDistance(IIZ)Landroid/text/Spannable;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showDistanceToStep(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

.method private showStepCues(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 6

    .prologue
    .line 693
    invoke-static {p2}, Lcom/google/glass/maps/util/StepUtil;->getDisplayStepCues(Lcom/google/android/maps/driveabout/nav/ah;)Ljava/util/List;

    move-result-object v1

    .line 694
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/maps/NavigationManager;->maxCueWidth:I

    iget-object v4, p0, Lcom/google/glass/maps/NavigationManager;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/glass/maps/NavigationManager;->updateUiListener:Lcom/google/android/maps/driveabout/store/bd;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/util/TextFormatter;->formatStepCues(Ljava/util/Collection;IILandroid/text/TextPaint;Lcom/google/android/maps/driveabout/store/bd;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-static {p2}, Lcom/google/glass/maps/IconDescriptor;->fromStep(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/glass/maps/IconDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    .line 699
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v2

    const/4 v3, 0x0

    .line 698
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/util/TextFormatter;->formatDistance(IIZ)Landroid/text/Spannable;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showDistanceToStep(Ljava/lang/CharSequence;)V

    .line 701
    return-void
.end method


# virtual methods
.method public addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/UserInterfaceManager;->addUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 221
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->locationSource:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->resume()V

    .line 222
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->updateUi()V

    .line 223
    return-void
.end method

.method public getDurationInSeconds()I
    .locals 4

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/NavigationManager;->startNavigatingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFinalStep()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNextGuidanceState(Lcom/google/android/maps/driveabout/nav/p;)Lcom/google/glass/maps/NavigationManager$GuidanceState;
    .locals 4

    .prologue
    .line 882
    if-eqz p1, :cond_6

    .line 883
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_0

    .line 884
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    .line 910
    :goto_0
    return-object v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_2

    .line 887
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->isRequestingNewRoute:Z

    if-nez v0, :cond_2

    .line 888
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowConfirmation:Z

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/NavigationManager;->selectDestinationStartTime:J

    .line 890
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    .line 892
    :cond_1
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->clock:Lcom/google/glass/time/Clock;

    .line 897
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/NavigationManager;->selectDestinationStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 898
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    .line 900
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationManager;->shouldShowRerouting(Lcom/google/android/maps/driveabout/nav/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 901
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    .line 903
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationManager;->shouldShowRerouting(Lcom/google/android/maps/driveabout/nav/p;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 904
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    .line 906
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->isRouteCompleted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 907
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0

    .line 910
    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    goto :goto_0
.end method

.method public handleResource(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 1

    .prologue
    .line 980
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->updateUi()V

    .line 987
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->updateUiListener:Lcom/google/android/maps/driveabout/store/bd;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/store/bd;->handleResource(Lcom/google/android/maps/driveabout/store/bb;)V

    goto :goto_0
.end method

.method public isFatalError()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGettingDirections()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRouteCompleted()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRouteInProgress()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->REROUTING:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingRouteOverview()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    return v0
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/UserInterfaceManager;->removeUserInterface(Lcom/google/glass/maps/NavigationUserInterface;)V

    .line 227
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->hasUIs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->locationSource:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->pause()V

    .line 230
    :cond_0
    return-void
.end method

.method public setShowRouteOverview(Z)V
    .locals 0

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    .line 351
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->updateUi()V

    .line 352
    return-void
.end method

.method public shouldInsertArtifactCard()Z
    .locals 2

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->isRouteCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    .line 996
    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAlternateRoutes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1000
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_1

    .line 1002
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 1003
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showRoutes([Lcom/google/android/maps/driveabout/nav/w;)V

    .line 1011
    :goto_0
    return-void

    .line 1006
    :cond_0
    sget-object v0, Lcom/google/glass/maps/NavigationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No alterate routes to show"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1009
    :cond_1
    sget-object v0, Lcom/google/glass/maps/NavigationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "State null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public skipDestinationTimeout()V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/maps/NavigationManager;->selectDestinationStartTime:J

    .line 345
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->updateUi()V

    .line 346
    return-void
.end method

.method public startNavigating([Lcom/google/android/maps/driveabout/nav/ao;IZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 245
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/glass/maps/util/TravelModeUtils;->setTravelMode(Landroid/content/Context;I)I

    move-result v0

    .line 246
    const-string v1, "NavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "StartNavigating: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    if-eqz p4, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/maps/GlassUserEventLogger;->logNavigationStart(Landroid/content/Context;)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/maps/NavigationManager;->startNavigatingTime:J

    .line 254
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager;->destination:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 255
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationManager;->destination:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/navlib/Navigation;->startNavigating([Lcom/google/android/maps/driveabout/nav/ao;I)V

    .line 256
    iput-boolean v5, p0, Lcom/google/glass/maps/NavigationManager;->isRequestingNewRoute:Z

    .line 257
    iput-boolean p3, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowConfirmation:Z

    .line 258
    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    .line 259
    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->isLiveCardBeingPublished:Z

    .line 260
    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->hasShownPowerTip:Z

    .line 261
    iput-object v6, p0, Lcom/google/glass/maps/NavigationManager;->lastRouteFailure:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    .line 262
    iput-object v6, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 263
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    .line 268
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getEventLog()Lcom/google/android/maps/driveabout/c/v;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    .line 271
    invoke-static {}, Lcom/google/glass/maps/GlassUserEventLogger;->disableLogging()V

    .line 272
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v1, v0}, Lcom/google/glass/navlib/Navigation;->replayEventLog(Lcom/google/android/maps/driveabout/c/v;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->reset()V

    .line 276
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, v5}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationManager;->updateUi()V

    .line 278
    return-void
.end method

.method public stopNavigating(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 288
    const-string v0, "NavigationManager"

    const-string v1, "StopNavigating"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->logNavigationEnd()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 297
    if-eqz p1, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->hideActiveItem()V

    .line 300
    :cond_1
    iput-object v2, p0, Lcom/google/glass/maps/NavigationManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 302
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 303
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->unpublishCard()V

    .line 306
    :cond_2
    iput-object v2, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 307
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->updateUiRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/util/Scheduler;->unschedule(Ljava/lang/Runnable;)V

    .line 308
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->exitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/util/Scheduler;->unschedule(Ljava/lang/Runnable;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->stopNavigating()V

    .line 311
    sget-object v0, Lcom/google/glass/maps/NavigationManager$GuidanceState;->STOPPED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    .line 312
    return-void
.end method

.method updateUi()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 375
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 376
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 377
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v6

    .line 378
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    .line 380
    invoke-virtual {p0, v6}, Lcom/google/glass/maps/NavigationManager;->getNextGuidanceState(Lcom/google/android/maps/driveabout/nav/p;)Lcom/google/glass/maps/NavigationManager$GuidanceState;

    move-result-object v0

    .line 381
    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 382
    const-string v7, "NavigationManager"

    iget-object v8, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x16

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "State Transition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " -> "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v7, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ROUTE_COMPLETED:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v7, :cond_0

    .line 384
    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v8, p0, Lcom/google/glass/maps/NavigationManager;->exitRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x1388

    invoke-interface {v7, v8, v9, v10}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 386
    :cond_0
    sget-object v7, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v7, :cond_4

    .line 390
    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v7}, Lcom/google/glass/maps/UserInterfaceManager;->listenForGuardPhraseIfNeeded()V

    .line 394
    :goto_0
    iput-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    .line 397
    :cond_1
    sget-object v0, Lcom/google/glass/maps/NavigationManager$7;->$SwitchMap$com$google$glass$maps$NavigationManager$GuidanceState:[I

    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    invoke-virtual {v7}, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    .line 556
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->GETTING_DIRECTIONS:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->guidanceState:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->SELECT_DESTINATION:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-eq v0, v1, :cond_3

    if-eqz v2, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->shouldUseOrientation()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 564
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 565
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v1}, Lcom/google/glass/navlib/Navigation;->getOrientation()Lcom/google/android/maps/driveabout/location/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    .line 567
    :goto_2
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->setCurrentLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 569
    iget-boolean v1, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    if-eqz v1, :cond_17

    .line 570
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v6, v1}, Lcom/google/android/maps/driveabout/nav/p;->a(F)Lcom/google/android/maps/driveabout/model/as;

    move-result-object v1

    .line 571
    if-eqz v1, :cond_16

    .line 573
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/as;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 575
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 574
    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;I)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    .line 585
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-direct {p0}, Lcom/google/glass/maps/NavigationManager;->shouldKeepScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 588
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->updateUiRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/util/Scheduler;->unschedule(Ljava/lang/Runnable;)V

    .line 589
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->updateUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 590
    return-void

    .line 392
    :cond_4
    iput-boolean v4, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    goto :goto_0

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/glass/maps/NavigationManager;->startNavigatingTime:J

    sget-wide v11, Lcom/google/glass/maps/NavigationManager;->GET_DIRECTIONS_TIMEOUT:J

    add-long/2addr v9, v11

    cmp-long v0, v7, v9

    if-lez v0, :cond_6

    .line 403
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v0

    if-nez v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/R$string;->error_no_location:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 405
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_TIMED_OUT_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto/16 :goto_1

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/maps/R$string;->error_network_failure:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 408
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_TIMED_OUT_NETWORK:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto/16 :goto_1

    .line 411
    :cond_6
    sget v0, Lcom/google/glass/maps/R$string;->directions:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 414
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    .line 415
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$string;->waiting_for_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_4
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v5, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v5, v3, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showStatus(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showDestination(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setTravelModeIcon(I)V

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    .line 415
    goto :goto_4

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_8

    .line 426
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->refinements:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto/16 :goto_1

    .line 427
    :cond_8
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    new-array v1, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto/16 :goto_1

    .line 434
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isLiveCardPublished()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->isLiveCardBeingPublished:Z

    if-nez v0, :cond_9

    .line 442
    iput-boolean v3, p0, Lcom/google/glass/maps/NavigationManager;->isLiveCardBeingPublished:Z

    .line 443
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v7, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->publishCard(Landroid/content/Context;)V

    .line 446
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v7

    .line 447
    if-eqz v7, :cond_b

    .line 448
    iget-object v8, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v9

    .line 449
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->q()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 448
    invoke-virtual {v8, v9, v0}, Lcom/google/glass/maps/UserInterfaceManager;->setRoutePolyline(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V

    .line 450
    iget-object v8, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->r()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v8, v0}, Lcom/google/glass/maps/UserInterfaceManager;->setTrafficIncidents(Ljava/util/List;)V

    .line 455
    :goto_5
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->b()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/glass/maps/util/TextFormatter;->formatTime(I)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 456
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_e

    .line 458
    iget-boolean v9, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    if-eqz v9, :cond_c

    .line 459
    iget-object v9, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v9}, Lcom/google/glass/maps/UserInterfaceManager;->showRouteOverview()V

    .line 466
    :goto_6
    invoke-static {v0}, Lcom/google/glass/maps/IconDescriptor;->fromStep(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/glass/maps/IconDescriptor;

    move-result-object v9

    invoke-direct {p0, v6, v0}, Lcom/google/glass/maps/NavigationManager;->getStepNotificationMessage(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/glass/maps/NavigationManager;->getTitleString(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v10

    .line 466
    invoke-direct {p0, v9, v0, v10, v8}, Lcom/google/glass/maps/NavigationManager;->showActiveItem(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_7
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->shouldShowRouteOverview:Z

    if-eqz v0, :cond_f

    .line 479
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->textFormatter:Lcom/google/glass/maps/util/TextFormatter;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->c()I

    move-result v1

    .line 480
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v9

    .line 479
    invoke-virtual {v0, v1, v9, v4}, Lcom/google/glass/maps/util/TextFormatter;->formatDistance(IIZ)Landroid/text/Spannable;

    move-result-object v1

    .line 481
    new-instance v0, Landroid/text/SpannableString;

    iget-object v9, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/maps/R$string;->distance_and_time:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v4

    aput-object v8, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v1}, Lcom/google/glass/navlib/Navigation;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/NavigationManager;->getDestination(Lcom/google/android/maps/driveabout/nav/ao;)Landroid/text/SpannableString;

    move-result-object v1

    move v13, v3

    move-object v3, v0

    move-object v0, v1

    move v1, v13

    .line 512
    :goto_8
    if-eqz v1, :cond_a

    .line 513
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->j()I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/google/glass/maps/NavigationManager;->getTrafficColor(Landroid/content/res/Resources;I)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 514
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 513
    invoke-virtual {v3, v1, v4, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 516
    :cond_a
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showStatus(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    if-eqz v0, :cond_15

    :goto_9
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showDestination(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setTravelModeIcon(I)V

    .line 523
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationManager;->hasShownPowerTip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationApplication;->shouldShowPowerTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    new-instance v1, Lcom/google/glass/maps/NavigationManager$5;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationManager$5;-><init>(Lcom/google/glass/maps/NavigationManager;)V

    const-wide/16 v7, 0xfa0

    invoke-interface {v0, v1, v7, v8}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 452
    :cond_b
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->clearRoute()V

    goto/16 :goto_5

    .line 460
    :cond_c
    invoke-direct {p0, v6, v2}, Lcom/google/glass/maps/NavigationManager;->shouldShowStayOnRoad(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 461
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->k()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/ah;->v()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 462
    invoke-direct {p0, v6, v0}, Lcom/google/glass/maps/NavigationManager;->showStayOnRoad(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V

    goto/16 :goto_6

    .line 464
    :cond_d
    invoke-direct {p0, v6, v0}, Lcom/google/glass/maps/NavigationManager;->showStepCues(Lcom/google/android/maps/driveabout/nav/p;Lcom/google/android/maps/driveabout/nav/ah;)V

    goto/16 :goto_6

    .line 469
    :cond_e
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, v1, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showDistanceToStep(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v9, Lcom/google/glass/maps/R$string;->directions_in_progress:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/glass/maps/NavigationManager;->showActiveItem(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 485
    :cond_f
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 490
    new-instance v0, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v8, Lcom/google/glass/maps/R$string;->searching_for_gps:I

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    move-object v0, v1

    move v1, v4

    .line 491
    goto/16 :goto_8

    .line 494
    :cond_10
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_LOCAL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isEng()Z

    move-result v0

    if-nez v0, :cond_12

    .line 495
    :cond_11
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_a
    move v13, v3

    move-object v3, v0

    move-object v0, v1

    move v1, v13

    .line 509
    goto/16 :goto_8

    .line 499
    :cond_12
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "(remote gps)"

    .line 501
    :goto_b
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 503
    const-string v10, " "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 504
    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 505
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 506
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v11, 0x21

    invoke-virtual {v9, v10, v8, v0, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 507
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 500
    :cond_13
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "(local gps)"

    goto :goto_b

    :cond_14
    const-string v0, "(network)"

    goto :goto_b

    .line 517
    :cond_15
    const-string v0, ""

    goto/16 :goto_9

    .line 540
    :pswitch_3
    sget v0, Lcom/google/glass/maps/R$string;->rerouting:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v3, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v3, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showReroutingMessage(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v3, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/google/glass/maps/UserInterfaceManager;->showStatus(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v3, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/google/glass/maps/UserInterfaceManager;->showDestination(Ljava/lang/CharSequence;)V

    .line 544
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/maps/NavigationManager;->getTitleString(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v3, v1}, Lcom/google/glass/maps/NavigationManager;->showActiveItem(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 549
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showDistanceToStep(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showStatus(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showDestination(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/R$string;->you_have_arrived:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v3, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v3, v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showStepInfo(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/CharSequence;)V

    .line 555
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/glass/maps/NavigationManager;->showActiveItem(Lcom/google/glass/maps/IconDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 577
    :cond_16
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V

    goto/16 :goto_3

    .line 581
    :cond_17
    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    goto/16 :goto_3

    :cond_18
    move-object v0, v2

    goto/16 :goto_2

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
