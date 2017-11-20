.class Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;
.super Lcom/google/glass/maps/CardsView$BaseCardsAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/TripCardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/TripCardsView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;->this$0:Lcom/google/glass/maps/TripCardsView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/TripCardsView;Lcom/google/glass/maps/TripCardsView$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;-><init>(Lcom/google/glass/maps/TripCardsView;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance p2, Lcom/google/glass/maps/directions/TripCardView;

    iget-object v0, p0, Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;->this$0:Lcom/google/glass/maps/TripCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/TripCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/TripCardsView$TripCardsAdapter;->this$0:Lcom/google/glass/maps/TripCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/TripCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/glass/maps/directions/Trip;

    .line 55
    invoke-virtual {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;->setTrip(Lcom/google/glass/maps/directions/Trip;)V

    .line 56
    return-object p2

    .line 50
    :cond_0
    check-cast p2, Lcom/google/glass/maps/directions/TripCardView;

    goto :goto_0
.end method
