.class final Lcom/google/maps/api/android/lib6/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/j;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/k;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/k;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->e(Lcom/google/maps/api/android/lib6/c/j;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
