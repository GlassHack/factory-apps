.class public Landroid/support/v7/internal/widget/x;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final g:[I


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/x;->g:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Landroid/support/v7/internal/widget/x;->b:I

    .line 48
    iput v1, p0, Landroid/support/v7/internal/widget/x;->c:I

    .line 49
    iput v1, p0, Landroid/support/v7/internal/widget/x;->d:I

    .line 50
    iput v1, p0, Landroid/support/v7/internal/widget/x;->e:I

    .line 66
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/x;->f:Ljava/lang/reflect/Field;

    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(II)I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getListPaddingTop()I

    move-result v2

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getListPaddingBottom()I

    move-result v3

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getListPaddingLeft()I

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getListPaddingRight()I

    .line 256
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getDividerHeight()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 261
    if-nez v8, :cond_1

    .line 262
    add-int p2, v2, v3

    .line 321
    :cond_0
    :goto_0
    return p2

    .line 266
    :cond_1
    add-int/2addr v3, v2

    .line 267
    if-lez v0, :cond_2

    if-eqz v4, :cond_2

    .line 276
    :goto_1
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v7, v1

    move v4, v1

    move-object v6, v5

    .line 277
    :goto_2
    if-ge v7, v9, :cond_4

    .line 278
    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 279
    if-eq v2, v4, :cond_5

    move v4, v2

    move-object v2, v5

    .line 283
    :goto_3
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 287
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_3

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_3

    .line 289
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 294
    :goto_4
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    .line 296
    if-lez v7, :cond_6

    .line 298
    add-int v2, v3, v0

    .line 301
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 303
    if-ge v3, p2, :cond_0

    .line 314
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 267
    goto :goto_1

    .line 292
    :cond_3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :cond_4
    move p2, v3

    .line 321
    goto :goto_0

    :cond_5
    move-object v2, v6

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_5
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 88
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 89
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 79
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/x;->b:I

    .line 80
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/x;->c:I

    .line 81
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/x;->d:I

    .line 82
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/internal/widget/x;->e:I

    .line 83
    return-void
.end method
