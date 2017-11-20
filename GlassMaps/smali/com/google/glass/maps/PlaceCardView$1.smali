.class Lcom/google/glass/maps/PlaceCardView$1;
.super Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/PlaceCardView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/PlaceCardView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/maps/PlaceCardView$1;->this$0:Lcom/google/glass/maps/PlaceCardView;

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapRendered(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/PlaceCardView$1;->this$0:Lcom/google/glass/maps/PlaceCardView;

    sget v1, Lcom/google/glass/maps/R$id;->map:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    invoke-static {v0}, Lcom/google/glass/maps/view/Animations;->fadeIn(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 101
    iget-object v0, p0, Lcom/google/glass/maps/PlaceCardView$1;->this$0:Lcom/google/glass/maps/PlaceCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/PlaceCardView;->access$002(Lcom/google/glass/maps/PlaceCardView;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 102
    return-void
.end method
