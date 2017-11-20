.class public Lcom/google/glass/maps/directions/TripCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private destinationName:Landroid/widget/TextView;

.field private fromToDuration:Lcom/google/glass/widget/DynamicSizeTextView;

.field private schematicView:Lcom/google/glass/maps/SchematicView;

.field private tripSummaryIcons:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TripCardView;->initialize(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TripCardView;->initialize(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TripCardView;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/maps/directions/TripCardView;->context:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$layout;->transit_trip_card:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/google/glass/maps/R$id;->trip_summary_icons:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->tripSummaryIcons:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/google/glass/maps/R$id;->from_to_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->fromToDuration:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 43
    sget v0, Lcom/google/glass/maps/R$id;->destination_name:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->destinationName:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/google/glass/maps/R$id;->schematic:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/SchematicView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->schematicView:Lcom/google/glass/maps/SchematicView;

    .line 45
    return-void
.end method


# virtual methods
.method public setTrip(Lcom/google/glass/maps/directions/Trip;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->tripSummaryIcons:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TripCardView;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/glass/maps/directions/Trip;->generateTripSummaryStringWithIcon(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->fromToDuration:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TripCardView;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/Step;->formatFromToDuration(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->destinationName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->schematicView:Lcom/google/glass/maps/SchematicView;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Trip;->getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/SchematicView;->setSegments([Lcom/google/glass/maps/SchematicSegment;)V

    .line 57
    return-void
.end method
