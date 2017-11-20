.class public final Lcom/google/maps/api/android/lib6/c/aj;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/c/y;

.field final b:Landroid/content/res/Resources;

.field c:Lcom/google/maps/api/android/lib6/gmm6/o/c;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/y;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aj;->a:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aj;->b:Landroid/content/res/Resources;

    return-void
.end method
