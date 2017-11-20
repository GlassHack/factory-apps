.class public Lcom/google/glass/maps/DestinationCardsView;
.super Lcom/google/glass/maps/CardsView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public setDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/maps/DestinationCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    .line 33
    new-instance v0, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;-><init>(Lcom/google/glass/maps/DestinationCardsView;Lcom/google/glass/maps/DestinationCardsView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/DestinationCardsView;->setAdapter(Lcom/google/glass/maps/CardsView$BaseCardsAdapter;)V

    .line 34
    return-void
.end method
