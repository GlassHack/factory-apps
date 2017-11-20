.class public Lcom/google/glass/maps/StepCardsView;
.super Lcom/google/glass/maps/CardsView;
.source "SourceFile"


# instance fields
.field private recommendedDistanceUnits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/StepCardsView;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/glass/maps/StepCardsView;->recommendedDistanceUnits:I

    return v0
.end method


# virtual methods
.method public getSelectedStep()Lcom/google/glass/maps/directions/Step;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    invoke-virtual {p0}, Lcom/google/glass/maps/StepCardsView;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    .line 58
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/nav/DataType$Type;->STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    if-ne v1, v2, :cond_0

    .line 59
    check-cast v0, Lcom/google/glass/maps/directions/Step;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTrip(Lcom/google/glass/maps/directions/Trip;I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/DataType;

    iput-object v1, p0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    .line 41
    iget-object v1, p0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aput-object p1, v1, v0

    .line 42
    const/4 v1, 0x1

    .line 43
    iget-object v3, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 44
    iget-object v6, p0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v6, v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/Trip;->getRecommendedDistanceUnits()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/StepCardsView;->recommendedDistanceUnits:I

    .line 48
    new-instance v0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;-><init>(Lcom/google/glass/maps/StepCardsView;Lcom/google/glass/maps/StepCardsView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/StepCardsView;->setAdapter(Lcom/google/glass/maps/CardsView$BaseCardsAdapter;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/glass/maps/StepCardsView;->setSelection(I)V

    .line 50
    return-void
.end method
