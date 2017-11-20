.class Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;
.super Lcom/google/glass/maps/CardsView$BaseCardsAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/DestinationCardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/DestinationCardsView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;->this$0:Lcom/google/glass/maps/DestinationCardsView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/DestinationCardsView;Lcom/google/glass/maps/DestinationCardsView$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;-><init>(Lcom/google/glass/maps/DestinationCardsView;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 40
    if-nez p2, :cond_2

    .line 41
    new-instance p2, Lcom/google/glass/maps/PlaceCardView;

    iget-object v0, p0, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;->this$0:Lcom/google/glass/maps/DestinationCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/DestinationCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/PlaceCardView;-><init>(Landroid/content/Context;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;->this$0:Lcom/google/glass/maps/DestinationCardsView;

    iget-boolean v0, v0, Lcom/google/glass/maps/DestinationCardsView;->isNavigating:Z

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;->this$0:Lcom/google/glass/maps/DestinationCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/DestinationCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$string;->operation_directions_to:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/glass/maps/PlaceCardView;->showOperationText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/DestinationCardsView$DestinationCardsAdapter;->this$0:Lcom/google/glass/maps/DestinationCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/DestinationCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ao;

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    if-eqz v1, :cond_5

    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, ", "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_1
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->hideBodyText()V

    .line 77
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 78
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/glass/maps/PlaceCardView;->showMap(Lcom/google/android/maps/driveabout/model/m;)V

    .line 83
    :goto_4
    return-object p2

    .line 43
    :cond_2
    check-cast p2, Lcom/google/glass/maps/PlaceCardView;

    goto/16 :goto_0

    .line 49
    :cond_3
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->hideOperationText()V

    goto :goto_1

    .line 65
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ", "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {p2, v1}, Lcom/google/glass/maps/PlaceCardView;->showBodyText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 80
    :cond_7
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->hideMap()V

    goto :goto_4
.end method
