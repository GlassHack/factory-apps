.class final Lcom/google/maps/api/android/lib6/c/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ay;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/google/maps/api/android/lib6/c/ah;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/ah;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ai;->b:Lcom/google/maps/api/android/lib6/c/ah;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/ai;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/c/ax;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ax;->j()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ax;->i()Lcom/google/maps/api/android/lib6/c/az;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ai;->b:Lcom/google/maps/api/android/lib6/c/ah;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/ah;->a(Lcom/google/maps/api/android/lib6/c/ah;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/maps/ab;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ai;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/c/bc;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
