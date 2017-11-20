.class public final Lcom/google/android/pano/util/AccountImageHelper;
.super Ljava/lang/Object;
.source "AccountImageHelper.java"


# static fields
.field static final CONTACT_PROJECTION_DATA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_file_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/pano/util/AccountImageHelper;->CONTACT_PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public static getAccountPictureUri(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v0, 0x1

    .line 51
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 53
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 55
    .local v7, "contactId":J
    const/4 v9, 0x0

    .line 56
    .local v9, "lookupKey":Ljava/lang/String;
    const/4 v11, 0x0

    .line 57
    .local v11, "photoUri":Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, "photoFileId":I
    const-wide/16 v12, 0x0

    .line 60
    .local v12, "rawContactId":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/pano/util/AccountImageHelper;->CONTACT_PROJECTION_DATA:[Ljava/lang/String;

    const-string v3, "data1 LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 64
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 65
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 66
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 67
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 70
    :cond_0
    if-eqz v6, :cond_1

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    if-nez v10, :cond_2

    .line 79
    invoke-static {p0, v12, v13}, Lcom/google/android/pano/util/AccountImageHelper;->syncContactHiResPhoto(Landroid/content/Context;J)V

    .line 83
    .end local v11    # "photoUri":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v11

    .line 70
    .restart local v11    # "photoUri":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 83
    :cond_4
    invoke-static {p0}, Lcom/google/android/pano/util/AccountImageHelper;->getDefaultPictureUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method public static getDefaultPictureUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 109
    .local v0, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/pano/R$drawable;->pano_default_contact_picture:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/google/android/pano/data/util/UriUtils;->getShortcutIconResourceUri(Landroid/content/Intent$ShortcutIconResource;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static syncContactHiResPhoto(Landroid/content/Context;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J

    .prologue
    .line 87
    const-string v1, "com.google.android.syncadapters.contacts.SyncHighResPhotoIntentService"

    .line 89
    .local v1, "serviceName":Ljava/lang/String;
    const-string v2, "com.google.android.syncadapters.contacts"

    .line 90
    .local v2, "servicePackageName":Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 92
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.google.android.syncadapters.contacts"

    const-string v5, "com.google.android.syncadapters.contacts.SyncHighResPhotoIntentService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v4, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v4

    goto :goto_0
.end method
