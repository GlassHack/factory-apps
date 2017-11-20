.class public final Lcom/google/maps/api/android/lib6/c/bh;
.super Lcom/google/android/gms/maps/internal/bx;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static j:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/bm;

.field private final b:Lcom/google/maps/api/android/lib6/c/br;

.field private final c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Lcom/google/maps/api/android/lib6/c/bl;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/maps/api/android/lib6/c/bu;

.field private h:Lcom/google/maps/api/android/lib6/c/bk;

.field private final i:Lcom/google/maps/api/android/lib6/c/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(FFF)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/bh;->j:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/bm;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Lcom/google/maps/api/android/lib6/c/br;Lcom/google/maps/api/android/lib6/c/bl;Landroid/widget/FrameLayout;Lcom/google/maps/api/android/lib6/c/bu;Lcom/google/maps/api/android/lib6/c/bo;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/bx;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bh;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/c/bh;->e:Lcom/google/maps/api/android/lib6/c/bl;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/c/bh;->d:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/c/bh;->i:Lcom/google/maps/api/android/lib6/c/bo;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bi;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/c/bi;-><init>(Lcom/google/maps/api/android/lib6/c/bh;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->h:Lcom/google/maps/api/android/lib6/c/bk;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bh;->h:Lcom/google/maps/api/android/lib6/c/bk;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/maps/api/android/lib6/c/bk;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->e:Lcom/google/maps/api/android/lib6/c/bl;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->k()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/bh;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->l()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/bh;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->m()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/bh;->b(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->n()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/bh;->d(Z)V

    :cond_3
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/maps/api/android/lib6/c/bh;
    .locals 11

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dm;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/c/dm;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/c/c;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)Landroid/content/Context;

    move-result-object v3

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    move-result-object v2

    new-instance v5, Lcom/google/maps/api/android/lib6/c/bl;

    invoke-direct {v5, v3}, Lcom/google/maps/api/android/lib6/c/bl;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->a()Lcom/google/maps/api/android/lib6/c/br;

    move-result-object v4

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/bx;->b()Lcom/google/maps/api/android/lib6/c/bu;

    move-result-object v7

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/c/bh;->j:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    invoke-interface {v2, v8, v9, v10, v0}, Lcom/google/maps/api/android/lib6/c/bm;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/at;->a(Landroid/content/Context;)Lcom/google/maps/api/android/lib6/c/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/at;->a()V

    new-instance v8, Lcom/google/maps/api/android/lib6/c/bo;

    invoke-direct {v8, v3}, Lcom/google/maps/api/android/lib6/c/bo;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/bm;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, v5, Lcom/google/maps/api/android/lib6/c/bl;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/c/bw;->bD:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v7, v0}, Lcom/google/maps/api/android/lib6/c/bu;->a(Lcom/google/maps/api/android/lib6/c/bw;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bh;

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/c/bh;-><init>(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/bm;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Lcom/google/maps/api/android/lib6/c/br;Lcom/google/maps/api/android/lib6/c/bl;Landroid/widget/FrameLayout;Lcom/google/maps/api/android/lib6/c/bu;Lcom/google/maps/api/android/lib6/c/bo;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/bh;)Lcom/google/maps/api/android/lib6/c/bl;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->e:Lcom/google/maps/api/android/lib6/c/bl;

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/c/bh;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/c/bh;)Lcom/google/maps/api/android/lib6/c/bm;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/e/i;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bQ:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/e/i;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bP:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v0}, Lcom/google/maps/api/android/lib6/c/bm;->a(II)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "camera"

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    if-eqz p1, :cond_2

    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v0, v1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/c/bh;->j:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bN:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/internal/bh;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bM:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/internal/bk;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bO:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/internal/bn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bK:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bL:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1, p2}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/model/LatLng;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bI:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/c/bm;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bJ:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bE:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->a(Z)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->h()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "StreetViewPanoramaOptions"

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "camera"

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bh;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/ci;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "position"

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/bm;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ax;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-direct {v0, p1, v1}, Lcom/google/maps/api/android/lib6/c/ax;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    new-instance v1, Lcom/google/maps/api/android/lib6/c/bj;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/c/bj;-><init>(Lcom/google/maps/api/android/lib6/c/bh;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/ax;->a(Lcom/google/maps/api/android/lib6/c/ay;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bF:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->b(Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->i()Z

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bG:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->c(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->j()Z

    move-result v0

    return v0
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bH:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bm;->d(Z)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->k()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->f()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->b:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->c()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bm;->b()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->g:Lcom/google/maps/api/android/lib6/c/bu;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bu;->a()V

    return-void
.end method

.method public final j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->o()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->c:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->e:Lcom/google/maps/api/android/lib6/c/bl;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bh;->i:Lcom/google/maps/api/android/lib6/c/bo;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/bm;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bh;->a:Lcom/google/maps/api/android/lib6/c/bm;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/bm;->f()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/bo;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    :cond_0
    return-void
.end method
