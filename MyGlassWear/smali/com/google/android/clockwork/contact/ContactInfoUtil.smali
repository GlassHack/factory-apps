.class public final Lcom/google/android/clockwork/contact/ContactInfoUtil;
.super Ljava/lang/Object;
.source "ContactInfoUtil.java"


# static fields
.field private static final QUERY_BY_EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContactInfoUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/clockwork/contact/ContactInfoUtil;->QUERY_BY_EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static queryContactInfoByEmail(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/contact/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 36
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v10, v5

    .line 68
    :goto_0
    return-object v10

    .line 40
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v12

    .line 41
    .local v12, "size":I
    new-array v13, v12, [Ljava/lang/String;

    .line 42
    .local v13, "where":[Ljava/lang/String;
    const-string v1, "?"

    invoke-static {v13, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1 IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "query":Ljava/lang/String;
    new-array v1, v12, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 46
    .local v4, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 49
    .local v10, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/contact/ContactInfo;>;"
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/clockwork/contact/ContactInfoUtil;->QUERY_BY_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 53
    const-string v1, "contact_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 54
    .local v8, "idIdx":I
    const-string v1, "data1"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 55
    .local v7, "emailIdx":I
    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 57
    .local v11, "nameIdx":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    new-instance v9, Lcom/google/android/clockwork/contact/ContactInfo;

    invoke-direct {v9}, Lcom/google/android/clockwork/contact/ContactInfo;-><init>()V

    .line 59
    .local v9, "info":Lcom/google/android/clockwork/contact/ContactInfo;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/google/android/clockwork/contact/ContactInfo;->contactId:I

    .line 60
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/clockwork/contact/ContactInfo;->email:Ljava/lang/String;

    .line 61
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/clockwork/contact/ContactInfo;->displayName:Ljava/lang/String;

    .line 62
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 65
    .end local v7    # "emailIdx":I
    .end local v8    # "idIdx":I
    .end local v9    # "info":Lcom/google/android/clockwork/contact/ContactInfo;
    .end local v11    # "nameIdx":I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v7    # "emailIdx":I
    .restart local v8    # "idIdx":I
    .restart local v11    # "nameIdx":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static readProfilePicture(Landroid/content/ContentResolver;I)Lcom/google/android/gms/wearable/Asset;
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, "contactUri":Landroid/net/Uri;
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 75
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 77
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 79
    invoke-static {v0}, Lcom/google/android/clockwork/utils/ImageUtils;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/wearable/Asset;->createFromBytes([B)Lcom/google/android/gms/wearable/Asset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 85
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v3

    .line 81
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    const-string v4, "ContactInfoUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot decode profile picture for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method
