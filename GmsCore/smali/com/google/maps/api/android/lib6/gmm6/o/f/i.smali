.class public final Lcom/google/maps/api/android/lib6/gmm6/o/f/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/i;->a:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/i;->b:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/i;->c:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/i;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/i;->c:I

    return-void
.end method
