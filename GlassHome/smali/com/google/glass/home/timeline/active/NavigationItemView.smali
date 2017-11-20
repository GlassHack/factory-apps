.class public Lcom/google/glass/home/timeline/active/NavigationItemView;
.super Lcom/google/glass/home/timeline/active/ActiveItemView;
.source "NavigationItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private dirDestinationNameView:Landroid/widget/TextView;

.field private dirFromToDurationView:Landroid/widget/TextView;

.field private dirLayout:Landroid/view/View;

.field private dirTripSummaryView:Landroid/widget/TextView;

.field private iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

.field private navDestinationNameView:Landroid/widget/TextView;

.field private navIconView:Landroid/widget/ImageView;

.field private navLayout:Landroid/view/View;

.field private navMessageView:Landroid/widget/TextView;

.field private navTimeRemainingView:Landroid/widget/TextView;

.field private schematicView:Lcom/google/glass/maps/SchematicView;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/NavigationItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 50
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 51
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/home/timeline/active/NavigationItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    if-eqz p2, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onAttachedToWindow()V

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->onParametersChanged(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->bringNavigationToForeground(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_FROM_TIMELINE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 81
    invoke-static {p1}, Lcom/google/glass/maps/NavigationActiveItemParams;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/maps/NavigationActiveItemParams;

    move-result-object v0

    .line 82
    .local v0, "params":Lcom/google/glass/maps/NavigationActiveItemParams;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    invoke-virtual {v1, v5}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->cancel(Z)Z

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getCardType()Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->NAVIGATION:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    if-ne v1, v2, :cond_2

    .line 88
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getIconUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navIconView:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    .line 93
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getIconUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navDestinationNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getDestinationName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navTimeRemainingView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirFromToDurationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirDestinationNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getDestinationName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirTripSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/NavigationActiveItemParams;->getTripSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->schematicView:Lcom/google/glass/maps/SchematicView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/SchematicView;->setSegments([Lcom/google/glass/maps/SchematicSegment;)V

    goto :goto_1
.end method

.method protected onViewInflated()V
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/google/glass/home/R$id;->navigation_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->turn_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navIconView:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navMessageView:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->destination_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navDestinationNameView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->time_remaining:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->navTimeRemainingView:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/google/glass/home/R$id;->directions_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->from_to_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirFromToDurationView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->destination_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirDestinationNameView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->trip_summary_icons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirTripSummaryView:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->dirLayout:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->schematic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/SchematicView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->schematicView:Lcom/google/glass/maps/SchematicView;

    .line 71
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/google/glass/home/R$layout;->maps_item:I

    return v0
.end method
