.class public Lcom/google/glass/maps/AlternateRoutesActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final renderer:Lcom/google/glass/maps/service/BackgroundMapRenderer;

.field private routes:[Lcom/google/android/maps/driveabout/nav/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/AlternateRoutesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->executor:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Lcom/google/glass/maps/service/BackgroundMapRenderer;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->renderer:Lcom/google/glass/maps/service/BackgroundMapRenderer;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/AlternateRoutesActivity;)Lcom/google/glass/maps/service/BackgroundMapRenderer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->renderer:Lcom/google/glass/maps/service/BackgroundMapRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/AlternateRoutesActivity;)[Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/AlternateRoutesActivity;Lcom/google/android/maps/driveabout/nav/w;)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/maps/AlternateRoutesActivity;->getTrafficColor(Lcom/google/android/maps/driveabout/nav/w;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/AlternateRoutesActivity;ILandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/AlternateRoutesActivity;->loadMap(ILandroid/widget/ImageView;)V

    return-void
.end method

.method private getTrafficColor(I)I
    .locals 2

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/maps/AlternateRoutesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$color;->traffic_status_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/glass/maps/AlternateRoutesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$color;->traffic_status_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/glass/maps/AlternateRoutesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$color;->traffic_status_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/glass/maps/AlternateRoutesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$color;->traffic_status_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTrafficColor(Lcom/google/android/maps/driveabout/nav/w;)I
    .locals 1

    .prologue
    .line 157
    .line 158
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigation()Lcom/google/glass/navlib/Navigation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v0

    .line 157
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->getTrafficColor(I)I

    move-result v0

    return v0
.end method

.method private loadMap(ILandroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/google/glass/maps/AlternateRoutesActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/maps/AlternateRoutesActivity$2;-><init>(Lcom/google/glass/maps/AlternateRoutesActivity;ILandroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/AlternateRoutesActivity$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/google/glass/maps/R$layout;->alternate_routes:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->setContentView(I)V

    .line 49
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigation()Lcom/google/glass/navlib/Navigation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getNavigationState()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    .line 59
    sget v0, Lcom/google/glass/maps/R$id;->route_cards:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    .line 60
    new-instance v1, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/maps/AlternateRoutesActivity$RouteAdapter;-><init>(Lcom/google/glass/maps/AlternateRoutesActivity;Lcom/google/glass/maps/AlternateRoutesActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {v0, v3}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/google/glass/maps/AlternateRoutesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No alternate routes to show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/maps/AlternateRoutesActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/maps/AlternateRoutesActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/AlternateRoutesActivity$1;-><init>(Lcom/google/glass/maps/AlternateRoutesActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 77
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 99
    sget-object v0, Lcom/google/glass/maps/AlternateRoutesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Item selected: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity;->routes:[Lcom/google/android/maps/driveabout/nav/w;

    aget-object v0, v0, p3

    invoke-static {p0, v0}, Lcom/google/glass/maps/NavigationService;->restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/w;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/maps/AlternateRoutesActivity;->finish()V

    .line 102
    return-void
.end method
