.class final Lcom/google/android/gms/panorama/c/n;
.super Lcom/google/android/gms/panorama/c/c;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/panorama/c/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/c/l;Ljava/util/concurrent/Semaphore;Lcom/google/android/gms/panorama/f/a;Lcom/google/android/gms/panorama/c/a;II)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gms/panorama/c/n;->c:Lcom/google/android/gms/panorama/c/l;

    iput p5, p0, Lcom/google/android/gms/panorama/c/n;->a:I

    iput p6, p0, Lcom/google/android/gms/panorama/c/n;->b:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/panorama/c/c;-><init>(Ljava/util/concurrent/Semaphore;Lcom/google/android/gms/panorama/f/a;Lcom/google/android/gms/panorama/c/a;)V

    return-void
.end method


# virtual methods
.method protected final f()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/n;->c:Lcom/google/android/gms/panorama/c/l;

    iget-object v0, v0, Lcom/google/android/gms/panorama/c/l;->b:Lcom/google/android/gms/panorama/g/n;

    iget v1, p0, Lcom/google/android/gms/panorama/c/n;->a:I

    iget-object v2, p0, Lcom/google/android/gms/panorama/c/n;->c:Lcom/google/android/gms/panorama/c/l;

    iget-object v2, v2, Lcom/google/android/gms/panorama/c/l;->b:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v2}, Lcom/google/android/gms/panorama/g/n;->c()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/panorama/c/n;->b:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/panorama/g/n;->a(II)Lcom/google/android/gms/panorama/g/m;

    move-result-object v0

    .line 98
    iget-object v0, v0, Lcom/google/android/gms/panorama/g/m;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
