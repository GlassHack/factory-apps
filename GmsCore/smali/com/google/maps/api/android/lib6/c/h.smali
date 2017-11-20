.class public final Lcom/google/maps/api/android/lib6/c/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/c/j;

.field final b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/h;->a:Lcom/google/maps/api/android/lib6/c/j;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/h;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/h;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/el;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/h;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/el;)V

    return-void
.end method
