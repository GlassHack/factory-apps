.class Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/CardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/CardsView;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/CardsView;Lcom/google/glass/maps/CardsView$1;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    if-eqz v0, :cond_1

    if-ltz p3, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v0, v0

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-static {v0}, Lcom/google/glass/maps/CardsView;->access$200(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-static {v0}, Lcom/google/glass/maps/CardsView;->access$200(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-static {v0}, Lcom/google/glass/maps/CardsView;->access$300(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/maps/CardsView$CardsViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    iget-boolean v0, v0, Lcom/google/glass/maps/CardsView;->isNavigating:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-static {v0}, Lcom/google/glass/maps/CardsView;->access$300(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/maps/CardsView$CardsViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/maps/CardsView$CardsViewListener;->onSkipTimeout()V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    invoke-static {v0}, Lcom/google/glass/maps/CardsView;->access$300(Lcom/google/glass/maps/CardsView;)Lcom/google/glass/maps/CardsView$CardsViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/CardsView$CardScrollViewItemClickListener;->this$0:Lcom/google/glass/maps/CardsView;

    iget-object v1, v1, Lcom/google/glass/maps/CardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v1, v1, p3

    invoke-interface {v0, v1, p3}, Lcom/google/glass/maps/CardsView$CardsViewListener;->onCardSelected(Lcom/google/android/maps/driveabout/nav/DataType;I)V

    goto :goto_0
.end method
