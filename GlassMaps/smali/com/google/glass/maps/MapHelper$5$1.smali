.class Lcom/google/glass/maps/MapHelper$5$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/MapHelper$5;

.field final synthetic val$input:[B

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/u;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper$5;[BLcom/google/common/util/concurrent/u;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$5$1;->this$1:Lcom/google/glass/maps/MapHelper$5;

    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$5$1;->val$input:[B

    iput-object p3, p0, Lcom/google/glass/maps/MapHelper$5$1;->val$resultFuture:Lcom/google/common/util/concurrent/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$5$1;->val$input:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper$5$1;->val$input:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper$5$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$5$1;->val$resultFuture:Lcom/google/common/util/concurrent/u;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/u;->set(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper$5$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
