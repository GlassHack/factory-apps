.class public abstract Lcom/google/glass/maps/CardsView$BaseCardsAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/CardsView;


# direct methods
.method protected constructor <init>(Lcom/google/glass/maps/CardsView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/maps/driveabout/nav/DataType;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->getItem(I)Lcom/google/android/maps/driveabout/nav/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v1, v1, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v1, v1, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :goto_1
    return v0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
