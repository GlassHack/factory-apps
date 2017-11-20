.class final Lcom/google/android/location/places/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/MarkerMapFragment;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/MarkerMapFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/location/places/ui/w;->a:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/location/places/ui/w;->a:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/MarkerMapFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 194
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/location/places/ui/w;->a:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-static {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/MarkerMapFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
