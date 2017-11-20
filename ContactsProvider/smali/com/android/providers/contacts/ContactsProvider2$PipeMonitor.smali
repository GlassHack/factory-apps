.class Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;
.super Landroid/os/AsyncTask;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeMonitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDataId:J

.field private final mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mRawContactId:J

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J
    .param p6, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 7894
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7895
    iput-wide p2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    .line 7896
    iput-wide p4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    .line 7897
    iput-object p6, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7898
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;Lcom/android/providers/contacts/ContactsProvider2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/contacts/ContactsProvider2;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "x4"    # Lcom/android/providers/contacts/ContactsProvider2$1;

    .prologue
    .line 7890
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 7902
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 7904
    .local v3, "is":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7905
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 7906
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v10, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v10}, Lcom/android/providers/contacts/ContactsProvider2;->access$200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/concurrent/CountDownLatch;)V

    .line 7907
    new-instance v7, Lcom/android/providers/contacts/PhotoProcessor;

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v9}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxDisplayPhotoDim()I

    move-result v9

    iget-object v10, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxThumbnailDim()I

    move-result v10

    invoke-direct {v7, v0, v9, v10}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;II)V

    .line 7911
    .local v7, "processor":Lcom/android/providers/contacts/PhotoProcessor;
    iget-wide v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    invoke-static {v9, v10}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v9}, Lcom/android/providers/contacts/ContactsProvider2;->access$400(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v6

    .line 7914
    .local v6, "photoStore":Lcom/android/providers/contacts/PhotoStore;
    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v4

    .line 7918
    .local v4, "photoFileId":J
    iget-wide v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    .line 7920
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 7923
    .local v8, "updateValues":Landroid/content/ContentValues;
    const-string v9, "skip_processing"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7925
    cmp-long v9, v4, v11

    if-eqz v9, :cond_0

    .line 7926
    const-string v9, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7928
    :cond_0
    const-string v9, "data15"

    invoke-virtual {v7}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 7929
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Lcom/android/providers/contacts/ContactsProvider2;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7954
    .end local v4    # "photoFileId":J
    .end local v6    # "photoStore":Lcom/android/providers/contacts/PhotoStore;
    .end local v7    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    .end local v8    # "updateValues":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 7956
    return-object v13

    .line 7911
    .restart local v7    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v9}, Lcom/android/providers/contacts/ContactsProvider2;->access$500(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v6

    goto :goto_0

    .line 7933
    .restart local v4    # "photoFileId":J
    .restart local v6    # "photoStore":Lcom/android/providers/contacts/PhotoStore;
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7936
    .local v2, "insertValues":Landroid/content/ContentValues;
    const-string v9, "skip_processing"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7938
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7939
    const-string v9, "is_primary"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7940
    cmp-long v9, v4, v11

    if-eqz v9, :cond_4

    .line 7941
    const-string v9, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7943
    :cond_4
    const-string v9, "data15"

    invoke-virtual {v7}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 7944
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7951
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "insertValues":Landroid/content/ContentValues;
    .end local v4    # "photoFileId":J
    .end local v6    # "photoStore":Lcom/android/providers/contacts/PhotoStore;
    .end local v7    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :catch_0
    move-exception v1

    .line 7952
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7954
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
.end method
