.class public Lcom/google/glass/maps/PlaceCardView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAP_ZOOM:F = 16.0f


# instance fields
.field private mapFuture:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/maps/PlaceCardView;->initialize(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/maps/PlaceCardView;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/maps/PlaceCardView;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/maps/PlaceCardView;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/maps/PlaceCardView;->mapFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$layout;->place_card:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    return-void
.end method


# virtual methods
.method public hideBodyText()V
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/google/glass/maps/R$id;->body:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public hideMap()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->mapFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->mapFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->mapFuture:Ljava/util/concurrent/Future;

    .line 112
    :cond_0
    sget v0, Lcom/google/glass/maps/R$id;->map:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public hideOperationText()V
    .locals 2

    .prologue
    .line 58
    sget v0, Lcom/google/glass/maps/R$id;->operation:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/glass/maps/PlaceCardView;->hideMap()V

    .line 118
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 119
    return-void
.end method

.method public showBodyText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/google/glass/maps/R$id;->body:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public showMap(Lcom/google/android/maps/driveabout/model/m;)V
    .locals 7

    .prologue
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 75
    invoke-virtual {p0}, Lcom/google/glass/maps/PlaceCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    .line 77
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    .line 79
    new-instance v5, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    .line 80
    invoke-virtual {v5, v1, v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 81
    invoke-virtual {v5, v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/maps/PlaceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    .line 85
    invoke-virtual {v2, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setLocation(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 87
    new-instance v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 88
    sget v4, Lcom/google/glass/maps/R$dimen;->place_card_map_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 89
    sget v4, Lcom/google/glass/maps/R$dimen;->place_card_map_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 90
    invoke-virtual {v3, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    iput-object v0, v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 92
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setZoom(F)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 94
    new-instance v0, Lcom/google/glass/maps/PlaceCardView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/PlaceCardView$1;-><init>(Lcom/google/glass/maps/PlaceCardView;)V

    invoke-virtual {v1, v3, v0}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/PlaceCardView;->mapFuture:Ljava/util/concurrent/Future;

    .line 104
    return-void
.end method

.method public showOperationText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/google/glass/maps/R$id;->operation:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/PlaceCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
