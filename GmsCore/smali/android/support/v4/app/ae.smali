.class final Landroid/support/v4/app/ae;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/app/af;

.field private b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/af;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/app/ae;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/support/v4/app/ae;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/aa;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ae;->b:Landroid/graphics/Rect;

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ae;->b:Landroid/graphics/Rect;

    return-object v0
.end method
