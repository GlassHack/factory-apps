.class public Lcom/google/glass/maps/TripCardsView;
.super Lcom/google/glass/maps/CardsView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public setTrips([Lcom/google/glass/maps/directions/Trip;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/maps/TripCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    if-eq v0, p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/google/glass/maps/TripCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    .line 36
    new-instance v0, Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;-><init>(Lcom/google/glass/maps/TripCardsView;Lcom/google/glass/maps/TripCardsView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/TripCardsView;->setAdapter(Lcom/google/glass/maps/CardsView$BaseCardsAdapter;)V

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/TripCardsView;->setSelection(I)V

    .line 41
    return-void
.end method
