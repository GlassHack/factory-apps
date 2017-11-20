.class final Lcom/google/maps/api/android/lib6/gmm6/c/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/c/az;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/maps/api/android/lib6/gmm6/c/m;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ar;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ar;->b:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/df;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ar;->b:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->f()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/j/q;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->f:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ar;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/x;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/x;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->C_()Lcom/google/maps/api/android/lib6/gmm6/f/i;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/f/i;Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ar;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/x;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 2

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ar;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/x;Ljava/lang/String;)V

    return-object v0
.end method
