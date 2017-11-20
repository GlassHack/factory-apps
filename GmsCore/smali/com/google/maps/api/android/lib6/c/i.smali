.class final Lcom/google/maps/api/android/lib6/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/h;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/i;->a:Lcom/google/maps/api/android/lib6/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/i;->a:Lcom/google/maps/api/android/lib6/c/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/h;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-virtual {v0, p3}, Lcom/google/maps/api/android/lib6/c/j;->a(I)V

    return-void
.end method
