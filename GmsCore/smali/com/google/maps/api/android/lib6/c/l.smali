.class final Lcom/google/maps/api/android/lib6/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/j;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/l;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/l;->a:Lcom/google/maps/api/android/lib6/c/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/j;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/l;->a:Lcom/google/maps/api/android/lib6/c/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/j;->setVisibility(I)V

    return-void
.end method
