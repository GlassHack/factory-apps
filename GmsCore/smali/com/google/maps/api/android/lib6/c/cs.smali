.class public final Lcom/google/maps/api/android/lib6/c/cs;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field public final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/cs;->a:I

    return-void
.end method
