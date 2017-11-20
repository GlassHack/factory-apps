.class final Lcom/google/maps/api/android/lib6/gmm6/o/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/bv;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/o/bc;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bc;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bc;->a:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
