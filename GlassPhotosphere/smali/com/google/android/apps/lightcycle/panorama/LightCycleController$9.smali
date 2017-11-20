.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writePictureToFileAsync([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field final synthetic val$imageData:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->val$imageData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 641
    const/4 v4, 0x0

    .line 643
    .local v4, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v8, "%d.jpg"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-direct {v3, v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v3, "imageFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 647
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .local v5, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isGalaxySz()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 650
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->val$imageData:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->val$imageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 652
    .local v2, "image":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v2, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 653
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    .end local v2    # "image":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 658
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 659
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->filePath:Ljava/lang/String;

    .line 662
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " saved : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->val$imageData:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 666
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/Vector;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 667
    .local v7, "thumbnailTextureId":I
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-virtual {v8}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 669
    .local v6, "rotation":[F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6, v7}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->addImage(Ljava/lang/String;[FI)V

    .line 671
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1704(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    .line 677
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    move-result-object v8

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2200(Ljava/io/File;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->onExposureUpdate(D)V

    move-object v4, v5

    .line 686
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v6    # "rotation":[F
    .end local v7    # "thumbnailTextureId":I
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 655
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "imageFile":Ljava/io/File;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$9;->val$imageData:[B

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 679
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 680
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 681
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 682
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 683
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 683
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "imageFile":Ljava/io/File;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 681
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 679
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    :catch_5
    move-exception v0

    goto :goto_2
.end method
